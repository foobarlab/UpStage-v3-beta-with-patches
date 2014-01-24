UpStage Server
==============

<a href="http://upstage.org.nz/">UpStage</a> is a client-server application platform for <a href="http://en.wikipedia.org/wiki/Cyberformance">Cyberformance</a>.
This is a fork of the pre-released beta version 3.0 with additional patches.

You can find more information about using UpStage in the End User Manuals here:
 * <a href="http://en.flossmanuals.net/upstage-v242-user-manual/">user manual (v2.4.2)</a>
 * <a href="http://upstage.org.nz/blog/?p=5445">streaming (video hack) manual (v2.4.2 + video streaming)</a>
 * <a href="http://upstage.org.nz/blog/wp-content/uploads/upstagev3usermanualdraft.pdf">v3-beta user manual (v3.0.0 draft)</a>

## Licence

See LICENSE.txt for the GNU General Public License.

## Requirements

UpStage requires Python version 2.6 or 2.7 with <a href="http://twistedmatrix.com">Twisted</a> (&gt;= 8.1, &lt; 9.0, 8.2 recommended) and <a href="http://pypi.python.org/pypi/zope.interface">zope.interface</a>.
  
## Third-party dependencies

UpStage uses various third-party software and libraries which will enhance functionality:

#### Media upload and conversion (required to upload non-flash media like images)

 * <a href="http://www.swftools.org/">SWFTOOLS</a> (converts images to SWF)

#### Text-to-Speech (optional)

 * <a href="http://lame.sourceforge.net/">LAME</a> (used to convert audio to MP3)
 * <a href="http://sourceforge.net/projects/rsynth/">rsynth</a> (TTS engine)
 * <a href="http://espeak.sourceforge.net/">eSpeak</a> (TTS engine)
 * <a href="http://tcts.fpms.ac.be/synthesis/mbrola.html">MBROLA</a> (TTS engine)
 * <a href="http://www.cstr.ed.ac.uk/projects/festival/">Festival</a> (TTS engine)
 
#### Audio-, Video- and Live-Streaming (optional)

For media streaming functionality (Video Hack feature) the <a href="http://www.red5.org">Red5 media server</a> is recommended, alternatively FMS, Wowza or any RTMP-capable streaming server of your choice.
If you already have access to a streaming server you just enter the stream URLs in UpStage and wont need to run or install your own media streaming server.

## Download and Installation
 
To install UpStage and its required software please refer to INSTALL.txt for further instructions.
Additional scripts can be found in the <a href="../master/install">install directory</a>.

## Network settings

The UpStage server application makes use of the following TCP ports (you may override the defaults):

 * Web port (8081) - serves contents to the browser
 * SWF port (7230) - communications between server and clients (Flash client running in the browser)
 * Flash policy port (843) - serves a "crossdomain.xml" which allows Flash clients to access server ports
 * RTMP port (1935) - handles all RTMP data sent to the client (includes A/V-streaming)

Those incoming ports will have to be opened on the server-side.

## Development

UpStage consists of a client (ActionScript 2) and server (Python/Twisted) part.
ActionScript code is compiled using <a href="http://www.mtasc.org/">MTASC</a> and <a href="http://swfmill.org/">swfmill</a>.
The API documentation for both client and server is generated using <a href="http://www.doxygen.org/">Doxygen</a>.

#### Recommended IDE configuration

This fork is developed using the <a href="http://www.eclipse.org/">Eclipse IDE</a> with <a href="http://sourceforge.net/projects/aseclipseplugin/">ASDT</a> and <a href="http://pydev.org/">PyDev</a> plugins installed.
Additionally parts are developed using <a href="http://www.flashdevelop.org/">FlashDevelop IDE</a>.
