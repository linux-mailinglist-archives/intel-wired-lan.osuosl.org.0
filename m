Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85986135F89
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 18:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B913856ED;
	Thu,  9 Jan 2020 17:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0H+Y2bsmdkZ; Thu,  9 Jan 2020 17:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01455857D0;
	Thu,  9 Jan 2020 17:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0BEB1BF869
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 17:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6A798827E
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 17:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNoom6YMI118 for <intel-wired-lan@osuosl.org>;
 Thu,  9 Jan 2020 17:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 051B687A34
 for <intel-wired-lan@osuosl.org>; Thu,  9 Jan 2020 17:43:52 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 09:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; 
 d="asc'?scan'208";a="272171584"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2020 09:43:52 -0800
Message-ID: <9400163aa83bbd414e43e2aebd5d9e1e23e394b5.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@osuosl.org, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 09 Jan 2020 09:43:52 -0800
In-Reply-To: <07213c35-b4fb-e230-75a2-1d11d51815c9@intel.com>
References: <20200103022342.820175-1-jesse.brandeburg@intel.com>
 <4185adba-3420-32ad-014d-64eee768d183@intel.com>
 <07213c35-b4fb-e230-75a2-1d11d51815c9@intel.com>
Organization: Intel
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e/iavf: use better trace
 path
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
Content-Type: multipart/mixed; boundary="===============5273661537841229326=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5273661537841229326==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-FSBgXwNNOf0hqjkdtQMp"


--=-FSBgXwNNOf0hqjkdtQMp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-01-08 at 14:55 -0800, Jacob Keller wrote:
> On 1/8/2020 2:49 PM, Jacob Keller wrote:
> > On 1/2/2020 6:23 PM, Jesse Brandeburg wrote:
> > > I'm seeing compilation fail of the i40e/iavf driver for some
> > > reason.
> > > I just checked 5.5-rc4 and the tip of net/net-next and all fail.
> > > Fails all the way back to v5.1 at least, I didn't check further
> > > back.
> > >=20
> > > repro steps:
> > > $ gcc -v
> > > gcc version 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC)
> > >=20
> > > $ git checkout -b my-net davem-net/master
> > > $ make mrproper
> > > $ make O=3D../my-net.obj defconfig allmodconfig modules_prepare
> > > $ make O=3D../my-net.obj M=3Ddrivers/net/ethernet/intel/i40e
> > >=20
> > > make[1]: Entering directory '/home/jbrandeb/git/my-net.obj'
> > >   CC [M]  drivers/net/ethernet/intel/i40e/i40e_main.o
> > > In file included from
> > > /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_tr
> > > ace.h:209,
> > >                  from
> > > /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_ma
> > > in.c:20:
> > > /home/jbrandeb/git/linux2/include/trace/define_trace.h:95:42:
> > > fatal error: ./i40e_trace.h: No such file or directory
> > >    95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
> > >       |                                          ^
> > > compilation terminated.
> > > make[2]: ***
> > > [/home/jbrandeb/git/linux2/scripts/Makefile.build:266:
> > > drivers/net/ethernet/intel/i40e/i40e_main.o] Error 1
> > > make[1]: *** [/home/jbrandeb/git/linux2/Makefile:1693:
> > > drivers/net/ethernet/intel/i40e] Error 2
> > > make[1]: Leaving directory '/home/jbrandeb/git/my-net.obj'
> > > make: *** [Makefile:179: sub-make] Error 2
> > >=20
> > > Just for sanity, I tried building the ice driver the same as
> > > above and
> > > it succeeds, so the build does work for some drivers.
> > >=20
> >=20
> > So.. ice works for some reason but i40e and iavf do not? Is the ice
> > driver using a path relative to the root?
> >=20
> > > So fix the include path for the i40e driver trace file to be
> > > relative
> > > to the kernel root like (some) other drivers do.
> >=20
> > I'd really like to know why this isn't required by all drivers...
> >=20
>=20
> It looks like this is handled in driver's Makefile via:
>=20
> ccflags-y +=3D -I$(src)>-->------->-------# needed for trace events
>=20
> or the following:
>=20
> CFLAGS_trace.o :=3D -I$(src)

I like the above solution, as it is much cleaner and less prone for
future errors, if the directory patch would change for whatever reason.

>=20
> This seems like the preferred solution when building with a separate
> object tree.
>=20
> Thanks,
> Jake
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


--=-FSBgXwNNOf0hqjkdtQMp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl4XZlgACgkQ5W/vlVpL
7c4uhxAAj1xxAShPMBFmR32TI9f0R0Vucdj04Z29XykvkINbrpW9Q1qmsicACFBU
9sb+sUpCQbu1ney55htYYw5f+QTz+ghoHg3J+FW12XyFkgZZ6u9xFSxXXZBz9oWq
W9YEB5Wsq0bJ5fGefRRhxyuN2cEYZZwp6lhQ08nktmtBkujF/AJdruQt/ETi/Exc
1j1nAXmkjbfU4TEa7uU7bnry1j2Ajiy7XvnRcIaBAeg5iNFUPBfVlEV/QGdtHgQN
yjWODGaeQMPP9zQV2If7YFQgGWvyZbpsFL0+7/SxZ8vMXoVB76b9mr2tjYpJ8Sm2
m7Gv7Tzy/PeEaoDAvHahXJCzhIHI83XrOTHqDgY4QlwfVI9KCuKQq3OWcWuXCq1m
pAGffegQd0EvgRkG+Uz8pvbOC9fjK/Hu7oQqhl5W/Gl9KT+dgKVKq03cJwYYnBHD
l8RO3YXjoITUUzeXZiquMyQSMo8TelxxTUSHW+RzAU4BGH/DembBqCRavDocmwjE
akUNy0e7UiSt//SP3InQ33uTI2CjqiVgL6wYm46WKdq/WdakusVSTN7uozHgwEER
sg5QMK0NBXfdKeZozWxXMZb+wM+riYkPnEerZ1XyaQEh+dDNtaOj24uIoV8VpLfA
soT/Lv+n8QibwyJ9Q0BUfZX2az04t4eB31jYG+VDJbt+wStAwDg=
=zlvz
-----END PGP SIGNATURE-----

--=-FSBgXwNNOf0hqjkdtQMp--


--===============5273661537841229326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5273661537841229326==--

