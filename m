Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 656C55A5C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 22:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2B90876B2;
	Fri, 28 Jun 2019 20:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uRPP0PN0TWKm; Fri, 28 Jun 2019 20:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4075876A2;
	Fri, 28 Jun 2019 20:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 711BC1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D7EA88265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgFGQCTFiMuu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 20:14:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C058488249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:14:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 13:14:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; 
 d="p7s'?scan'208";a="165171688"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 13:14:23 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Jun 2019 13:14:23 -0700
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.97]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.136]) with mapi id 14.03.0439.000;
 Fri, 28 Jun 2019 13:14:23 -0700
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "shannon.lee.nelson@gmail.com" <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH S23 01/15] ice: Implement ethtool ops
 for channels
Thread-Index: AQHVLT1BuTEJwjmXPUmCsKpGYqH/iqaxqeGAgAAbpQCAADF7AA==
Date: Fri, 28 Jun 2019 20:14:22 +0000
Message-ID: <01f9f276ede9ffba8afed4f5c692192fc4f7793d.camel@intel.com>
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
 <CAP-MU4NnHyFNfV08MpZkO200sYekvrNRhcENh-oB3e7DvKTSrg@mail.gmail.com>
 <6f9c96b00f2d3bdfe49deb18492fb2c5478293ed.camel@intel.com>
In-Reply-To: <6f9c96b00f2d3bdfe49deb18492fb2c5478293ed.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.244.155]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 01/15] ice: Implement ethtool ops
 for channels
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============6220108981821789731=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6220108981821789731==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-enYm8wXau0qR9HVdoUZb"

--=-enYm8wXau0qR9HVdoUZb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-06-28 at 17:17 +0000, Nguyen, Anthony L wrote:
> On Fri, 2019-06-28 at 08:38 -0700, Shannon Nelson wrote:
> > On Thu, Jun 27, 2019 at 4:08 PM Tony Nguyen <
> > anthony.l.nguyen@intel.com> wrote:
> > >=20
> > > +static int ice_set_channels(struct net_device *dev, struct
> > > ethtool_channels *ch)
> > > +{
> > > +       struct ice_netdev_priv *np =3D netdev_priv(dev);
> > > +       struct ice_vsi *vsi =3D np->vsi;
> > > +       struct ice_pf *pf =3D vsi->back;
> > > +       int new_rx =3D 0, new_tx =3D 0;
> > > +
> > > +       /* do not support changing other_count */
> > > +       if (ch->other_count)
> > > +               return -EINVAL;
> > > +
> > > +       /* verify request for a valid number of channels */
> > > +       if (ch->rx_count > ice_get_max_rxq(pf) ||
> > > +           ch->tx_count > ice_get_max_txq(pf))
> > > +               return -EINVAL;
> >=20
> > It was recently pointed out to me that these are checked by ethtool
> > before calling into here, so this is unnecessary code.
> >=20
>=20
> Thanks for the feedback.  I will remove this and submit a v2.
>=20

Hi Shannon,

It was brought to my attention that ethtool in not necessarily the only
tool that can call into the ioctls so we still need to perform these
checks to ensure we're in bounds.

Thanks,
Tony

>=20
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--=-enYm8wXau0qR9HVdoUZb
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
UDSWFPJn1IonMumCuP0DYWGYiGS8dKTJMMh2WA2XVewXVn0JQTWQDpckAOkmi+A0RwpZzYJ0Y3gT
AgMBAAGjggI2MIICMjAdBgNVHQ4EFgQUydTU8+nnPeJE0ndEkV7rlhV6p30wHwYDVR0jBBgwFoAU
HmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENB
JTIwNEEuY3JsMIGeBggrBgEFBQcBAQSBkTCBjjBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRl
bC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3J0MCEGCCsGAQUFBzABhhVodHRwOi8vb2NzcC5pbnRlbC5jb20w
CwYDVR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYB
BAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMMFEGA1UdEQRKMEigKgYKKwYBBAGC
NxQCA6AcDBphbnRob255Lmwubmd1eWVuQGludGVsLmNvbYEaYW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20wDQYJKoZIhvcNAQEFBQADggEBALLF5b7PLd6kEWuQRkEq6eZpohKWRkfC9DyLiwS+HaeH
9euNcIqpV4xrMXM6mPqs3AHRb9ibqUPo3wQMtHph35RRsmY7ENk9FxF/W8Ov5ZVPyW0rFiRsnr1C
QVc08YqXp1dlbQGf8nvJn8ryCwjNpw0CTQcGHXrL/YnboLu8+R9RdBue/HIlP4g0pyAC/8YOie04
PVo4flU2CGMYilm1euQ6OV8WRA2CKgvRVp/DZEzTqnmDvy12efG74bmMzXAvDv2I53TR5ltDpx5X
B8uO1XlhOrj+Z3mSi85eblWWhJlq6+TQH/hZWSiyZH2lo3J49oHClTlk86GUEIUp/sf5v5cxggIX
MIICEwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENs
YXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwg
QmFzaWMgSXNzdWluZyBDQSA0QQITMwAA0J5PWjT/SLEH2wAAAADQnjAJBgUrDgMCGgUAoF0wGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNjI4MjAxNDIwWjAjBgkq
hkiG9w0BCQQxFgQUW8u5LKku7/pufbFiHAOV6udlnDMwDQYJKoZIhvcNAQEBBQAEggEAmT6LnwkZ
A7lBZ751yXzVLy9h6tcd1BxlLTaGNLaeJyVLYyUXOPfSSK3SXpGp1RFIkVk1jl8RUPtEVKG3QHUw
GC81wk/WSkLgUCD7/A87edusVghR8lQV2VHhasEtLckPe3/tGwMFrwL4a4uTTdNYlVWetzyCY9FN
qxNpz4vzVNXybmalEZu0yTg63egBE3Uh36dYmnVujjpyB0SzxVdARWqmnsjP7ebEXo49zNe2AQqa
SrcUnvSlYLWLd+kPAtRETY4iHWok1MdavYuRvrOZpfrLC1i3/ApYQ+SMUtHCeFvmmY3tKK+cWsno
2hONqOozTMT7EGwT7um6BV/Yh2woKQAAAAAAAA==


--=-enYm8wXau0qR9HVdoUZb--

--===============6220108981821789731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6220108981821789731==--
