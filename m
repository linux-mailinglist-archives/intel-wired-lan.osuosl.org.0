Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5375F20F21
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 21:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1C2087370;
	Thu, 16 May 2019 19:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfffYloadpHs; Thu, 16 May 2019 19:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63F8087354;
	Thu, 16 May 2019 19:17:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACC4F1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A87A687194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gp1a+AQlqE2W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 19:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B198187086
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:17:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 12:17:55 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2019 12:17:55 -0700
Message-ID: <4fd1c087e5a19eea44521abc6b8d1213bca3ec22.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
 intel-wired-lan@lists.osuosl.org, Kees Cook <keescook@chromium.org>
Date: Thu, 16 May 2019 12:17:53 -0700
In-Reply-To: <dd2974a0-b559-cfd1-c3d8-0839594ef03c@embeddedor.com>
References: <20190329233850.29630-1-jeffrey.t.kirsher@intel.com>
 <b5f1f0c0-e27b-f861-c36e-35e493f45dff@embeddedor.com>
 <dd2974a0-b559-cfd1-c3d8-0839594ef03c@embeddedor.com>
Organization: Intel
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/6] igb: mark expected switch
 fall-through
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Reply-To: jeffrey.t.kirsher@intel.com
Content-Type: multipart/mixed; boundary="===============1213861623039330533=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============1213861623039330533==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-DLfpzCWVJ/3pDKsm57qy"


--=-DLfpzCWVJ/3pDKsm57qy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-08 at 12:59 -0500, Gustavo A. R. Silva wrote:
> Hi Jeff,
>=20
> I wonder if there is any chance for this series to be queued up for
> 5.2-rc1.

Possibly, but since the nature of your patch is to just modify a code
comment because the tools used to check are not sophisticated enough to
realize the code comment already clearly states "Fall through ...", I
do not feel this is *really* necessary to get into 'net'.  If I have
other 'fixes' in my queue that need to get pushed, I may add this
change to the series.  I have not decided yet whether it warrants being
in 'net' or could wait till 'net-next'.

>=20
> On 4/24/19 11:42 AM, Gustavo A. R. Silva wrote:
> > Hi Jeff,
> >=20
> > I just wanted to check if this series has already been applied
> > somewhere.
> >=20
> > Thanks
> > --
> > Gustavo
> >=20
> > On 3/29/19 6:38 PM, Jeff Kirsher wrote:
> > > From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> > >=20
> > > In preparation to enabling -Wimplicit-fallthrough, mark switch
> > > cases
> > > where we are expecting to fall through.
> > >=20
> > > This patch fixes the following warning:
> > >=20
> > > drivers/net/ethernet/intel/igb/igb_main.c: In function
> > > =E2=80=98__igb_notify_dca=E2=80=99:
> > > drivers/net/ethernet/intel/igb/igb_main.c:6694:6: warning: this
> > > statement may fall through [-Wimplicit-fallthrough=3D]
> > >    if (dca_add_requester(dev) =3D=3D 0) {
> > >       ^
> > > drivers/net/ethernet/intel/igb/igb_main.c:6701:2: note: here
> > >   case DCA_PROVIDER_REMOVE:
> > >   ^~~~
> > >=20
> > > Warning level 3 was used: -Wimplicit-fallthrough=3D3
> > >=20
> > > Notice that, in this particular case, the code comment is
> > > modified
> > > in accordance with what GCC is expecting to find.
> > >=20
> > > This patch is part of the ongoing efforts to enable
> > > -Wimplicit-fallthrough.
> > >=20
> > > Signed-off-by: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> > > ---
> > >  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index 834e879e1d57..e8042b0254bc 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -6701,7 +6701,7 @@ static int __igb_notify_dca(struct device
> > > *dev, void *data)
> > >  			igb_setup_dca(adapter);
> > >  			break;
> > >  		}
> > > -		/* Fall Through since DCA is disabled. */
> > > +		/* Fall Through - since DCA is disabled. */
> > >  	case DCA_PROVIDER_REMOVE:
> > >  		if (adapter->flags & IGB_FLAG_DCA_ENABLED) {
> > >  			/* without this a class_device is left
> > >=20
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> >=20


--=-DLfpzCWVJ/3pDKsm57qy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAlzdt2EACgkQ5W/vlVpL
7c4HzhAAoyHgX6oHYLCD9CNhiu9r6lP4aZEJgPgROlPIh+jO7II33VVTyP5WDwmd
GOZCR1S86gzmcllCH5bnIbYbz/087A/0ZfGEAzfN9aF4PrZVmMF3fdPC62GREc24
xbD+o/SIiz+O4qJpJKLDmSuQp+2eMchcNZO/PpGxZVJfoXZr76aXDS7feXsEHeyG
HwVLHi2WUpL1MDFzoCmb4wPFmKumOCIqxOk3GBumk3oFjkvgLnagnFnLFUrn/ZEH
UdThj27iFWe3kr+T2smsjI1sBR+st7EuFW+yLTCZ9Yu60nzfporDocV1j3DkEo1q
wEh7cz3CU9SG1kChLCv2EcV8YFiDDSvuC8kbcQl7p2OdRVzLj4x2k7RjyMkRGi/O
UFX6eM7+RGWBlfQBSPfgo6VmbMYIIiMbeJH8cnF0sndHh+vP9OqN/zkJXKhV/mF7
ShZAl46tsYrx9airYfodZE4op4/n/4otuFwbwXBZYUnvFvMgtMcfgMcG0U1FfKTl
EMfwmqNZC9DYNPcLarvh9dPNT3lVOR08l2GB9JgcwbUqjDTA2pInOaQhWFNZm/uy
nFxRCz0j/+4Kj1UbI5Nu67PUPpnyxRPuuJfuPltUubZyXqV2PYZpFjOiFCO5SkIL
Kfw6AN/9mS5tR6rDF7migAS+1m6r2i7AhvQqP7Nx0kiqrU/b/+M=
=v38/
-----END PGP SIGNATURE-----

--=-DLfpzCWVJ/3pDKsm57qy--


--===============1213861623039330533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1213861623039330533==--

