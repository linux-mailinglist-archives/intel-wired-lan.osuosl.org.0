Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 817462F5F52
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 11:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A16E20416;
	Thu, 14 Jan 2021 10:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2de9P4VHkrLh; Thu, 14 Jan 2021 10:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DF7A820437;
	Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D12CC1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 10:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCA0986AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 10:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vroIy36KrBKr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 10:55:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0086.hostedemail.com
 [216.40.44.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A972A86AF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 10:55:20 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 2FC50181D3025;
 Thu, 14 Jan 2021 10:55:18 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4321:5007:6742:7576:7652:7974:8603:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12109:12296:12297:12438:12740:12895:13019:13069:13095:13255:13311:13357:13439:13894:14181:14659:14721:21080:21433:21451:21524:21627:21990:30012:30054:30055:30063:30064:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: rake95_1e0310527526
X-Filterd-Recvd-Size: 3103
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Thu, 14 Jan 2021 10:55:15 +0000 (UTC)
Message-ID: <ff6c529f78396aa3ce8d9cb9fefeeb098e64342f.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>, Wei Xu
 <xuwei5@hisilicon.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Date: Thu, 14 Jan 2021 02:55:13 -0800
In-Reply-To: <CY4PR11MB15769D5697074F230C8742CAABA80@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <1599641471-204919-1-git-send-email-xuwei5@hisilicon.com>
 <CY4PR11MB15769D5697074F230C8742CAABA80@CY4PR11MB1576.namprd11.prod.outlook.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next] net: iavf: Use the ARRAY_SIZE
 macro for aq_to_posix
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
Cc: "salil.mehta@huawei.com" <salil.mehta@huawei.com>,
 "jinying@hisilicon.com" <jinying@hisilicon.com>,
 "tangkunshan@huawei.com" <tangkunshan@huawei.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "john.garry@huawei.com" <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "huangdaode@hisilicon.com" <huangdaode@hisilicon.com>,
 "jonathan.cameron@huawei.com" <jonathan.cameron@huawei.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "liguozhu@hisilicon.com" <liguozhu@hisilicon.com>,
 "zhangyi.ac@huawei.com" <zhangyi.ac@huawei.com>,
 "shiju.jose@huawei.com" <shiju.jose@huawei.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-14 at 09:57 +0000, Jankowski, Konrad0 wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of=
 Wei Xu
[]
> > Use the ARRAY_SIZE macro to calculate the size of an array.
> > This code was detected with the help of Coccinelle.
[]
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
[]
> > @@ -120,7 +120,7 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, i=
nt aq_rc)
> > =A0	if (aq_ret =3D=3D IAVF_ERR_ADMIN_QUEUE_TIMEOUT)
> > =A0		return -EAGAIN;
> > =

> > -	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
> > +	if (!((u32)aq_rc < ARRAY_SIZE(aq_to_posix)))
> > =A0		return -ERANGE;
> > =

> > =A0	return aq_to_posix[aq_rc];
> =

> Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

I think several things are poor here.

This function shouldn't really be a static inline as it would just bloat
whatever uses it and should just be a typical function in a utility .c file.

And it doesn't seem this function is used at all so it should be deleted.

aq_to_posix should be static const.

And if it's really necessary, I think it would be simpler to read using code
without the cast and negation.

	if (aq_rc < 0 || aq_rc >=3D ARRAY_SIZE(aq_to_posix))
		return -ERANGE;



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
