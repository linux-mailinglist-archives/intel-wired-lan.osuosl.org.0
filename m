Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2198956D3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 798C340766;
	Tue,  2 Apr 2024 14:34:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E7uCMJDauY7N; Tue,  2 Apr 2024 14:34:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3A07406D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712068468;
	bh=07kio1SdxJnWMJjOhaKtqlFrt3AjBJCC1sjzym6WBLk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PTWdBVqY2NITig6Sj/Gxhhk64lidmkbY8KNL2DKRsO8Zxk/4kH9+lk3mM+w6PSkq6
	 I7857hNZQyFqt31TWoIIXl5hu9/KOSkTmktVvtuApOTrIMnhfGuCZP6AYNj7jNXvpt
	 8aaOzNN93BcOyQq1V6sBnYqfvKQXC65UV9zagyL8fwpZb4dwhUqtb6+oOdefSe3mWO
	 J1O7AYWz8wWcHwdOjMKdheWORYXUTEeRaqePcPYxjnCHE2H8px+xpo49bf8wIOjEQ4
	 iTCKeyzLpubNDLT8KcquPeBDCdEZUaJMU7ZPaKJjnDEQcsH9D7kO2AKvvxnOmJAizC
	 Fy3BJkuqKXaDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3A07406D0;
	Tue,  2 Apr 2024 14:34:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F08F91BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC4A560BB8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:34:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jYtdg4FMsN_P for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:34:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 058C360B6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 058C360B6B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 058C360B6B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:34:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3392261036;
 Tue,  2 Apr 2024 14:34:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56BC5C433B1;
 Tue,  2 Apr 2024 14:34:22 +0000 (UTC)
Date: Tue, 2 Apr 2024 07:34:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240402073421.2528ce4f@kernel.org>
In-Reply-To: <f7c6264e-9a16-4232-aba2-fde91eb51fb7@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
 <20240329152954.26a7ce75@kernel.org>
 <f7c6264e-9a16-4232-aba2-fde91eb51fb7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712068462;
 bh=mEPYYlyv9uOcM/SzKft0D50DeLT0ZyyD7O2KlxAsQWc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SDX7jZl7CzU94TyD3N+d4QFLVs6kYq6Os8LXlk6YC4IlXTQZogGnBv9UhOPWjMSU/
 0+g43cSfo1bN4JN+FQBJeG339vKqsuQU9XzMPM1N5ODsdZKtHNZcxlTSK2+28zwU1j
 9TF9O2f6uNerHY2iWXTiZWJw1v+XsIaTB9y1gf3n/gCV0XnkjNXujG1tLWDY2UEfc7
 zXDhaVJ0WQKcAVx19NTwneQDLwuw1x2kiWjADDHxnbHVKCdrR/kgoWTdUUEiCwVThX
 IoEsK2zkqKSfqxH/RmctztvA6KA6+gmlfBy5Fs8kufs+FaEx92ZV1/9uZmTdkKeSpB
 OxXZ9fi0MOJvw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SDX7jZl7
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2 Apr 2024 13:25:07 +0200 Wojciech Drewek wrote:
> On 29.03.2024 23:29, Jakub Kicinski wrote:
> > On Fri, 29 Mar 2024 10:23:20 +0100 Wojciech Drewek wrote: =20
> >> Some modules use nonstandard power levels. Adjust ethtool
> >> module implementation to support new attributes that will allow user
> >> to change maximum power.
> >>
> >> Add three new get attributes:
> >> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
> >>   maximum power in the cage =20
> >=20
> > 1) I'd keep the ETHTOOL_A_MODULE_POWER_ prefix, consistently.
> >=20
> > 2) The _SET makes it sound like an action. Can we go with
> >    ETHTOOL_A_MODULE_POWER_MAX ? Or ETHTOOL_A_MODULE_POWER_LIMIT?
> >    Yes, ETHTOOL_A_MODULE_POWER_LIMIT
> >         ETHTOOL_A_MODULE_POWER_MAX
> >         ETHTOOL_A_MODULE_POWER_MIN
> >    would sound pretty good to me. =20
>=20
> Makes sense, although ETHTOOL_A_MODULE_POWER_LIMIT does not say if
> it's max or min limit. What about:
> ETHTOOL_A_MODULE_POWER_MAX_LIMIT
> ETHTOOL_A_MODULE_POWER_UPPER_LIMIT

Is it possible to "limit" min power? =F0=9F=A7=90=EF=B8=8F
This is not HTB where "unused power" can go to the sibling cage...
> >> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
> >> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum=
 allowed");
> >> +			return -EINVAL;
> >> +		}
> >> +	}
> >> +
> >> +	ethnl_update_policy(&power_new.policy,
> >> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
> >> +	ethnl_update_u8(&power_new.max_pwr_reset,
> >> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod); =20
> >=20
> > I reckon reset should not be allowed if none of the max_pwr values=20
> > are set (i.e. most likely driver doesn't support the config)? =20
>=20
> Hmmm, I think we can allow to reset if the currently set limit is the def=
ault one.
> Right now only the driver could catch such scenario because we don't have=
 a parameter
> that driver could use to inform the ethtool about the default value.
> I hope that answers your question since I'm not 100% sure if that's what =
you asked about :)

Let me put it differently. How do we know that the driver doesn't
support setting the power policy? AFAIU we assume driver supports
it when it reports min_pwr_allowed || max_pwr_allowed from get.
If that's not the case we should add a cap bit like
cap_link_lanes_supported.

So what I'm saying is that if driver doesn't support the feature,
we should error out if user space gave us any=20
tb[ETHTOOL_A_MODULE_MAX_POWER* attribute.

> >> +	if (!mod)
> >>  		return 0;
> >> =20
> >> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) { =20
> >=20
> > Mmm. How is that gonna work? The driver is going to set max_pwr_set
> > to what's currently configured. So the user is expected to send
> > ETHTOOL_A_MODULE_MAX_POWER_SET =3D 0
> > ETHTOOL_A_MODULE_MAX_POWER_RESET =3D 1
> > to reset? =20
>=20
> Yes, that was my intention. Using both of those attributes at the same ti=
me is not allowed.

To be clear the code is:

 	ret =3D ops->get_module_power_cfg(dev, &power, info->extack);
 	if (ret < 0)
 		return ret;

	power_new.max_pwr_set =3D power.max_pwr_set;

	ethnl_update_u32(&power_new.max_pwr_set,
			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
 	// ...
=20
	if (power_new.max_pwr_reset && power_new.max_pwr_set) {

so if driver reports .max_pwr_set from get we may fall into this if
I think you got it but anyway..
