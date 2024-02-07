Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0751684D5CF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 23:32:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7748985170;
	Wed,  7 Feb 2024 22:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KwjCSktPKAvw; Wed,  7 Feb 2024 22:32:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964E0850E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707345155;
	bh=3PCGhD3ZIzPOeAZEXvfxYW7fd6AKFaspyUWW5SzOjIY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=VRsKsE6p/EbexdzYk0T152K6iRjcyCgQALg2ee8tMXaynLri8IW8qN71hjKYv+KeY
	 t/LiYqeCgmsrpcvbrJYoGFajnJbhK0zVKSfBzUeIWvRZBK15vgmeNe51Iro7zzjqFa
	 DGGvk9UI9Ew2Gu4ET94gTOQfeRvRobY4yHhhLplFS8rWMHSdSii4gI7JFmMfYNQT+G
	 PZSCRMEGL65bejVWWr/LLsidgy6LdADWzob+OdMGiJyM6bDCRimhZrYjiosML1nGTG
	 Md8bj8+ye40Me9LR7RhnD8mp8KcHWAxUAcSbRxVtsJaKcwdHpUtDvOIMRX8MdGmnpJ
	 bkVjlOxAcEFaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 964E0850E5;
	Wed,  7 Feb 2024 22:32:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 977331BF82C
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8357B6FAB0
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtiHExJDaNNl for <intel-wired-lan@osuosl.org>;
 Wed,  7 Feb 2024 22:32:33 +0000 (UTC)
X-Greylist: delayed 536 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 22:32:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D720D6FA9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D720D6FA9D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=17.57.156.10;
 helo=ci74p00im-qukt09082101.me.com; envelope-from=ernesto@castellotti.net;
 receiver=<UNKNOWN> 
Received: from ci74p00im-qukt09082101.me.com (ci74p00im-qukt09082101.me.com
 [17.57.156.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D720D6FA9D
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:32:32 +0000 (UTC)
Received: from [10.44.0.51] (ci77p00im-dlb-asmtp-mailmevip.me.com
 [17.57.156.26])
 by ci74p00im-qukt09082101.me.com (Postfix) with ESMTPSA id 1C594560010A;
 Wed,  7 Feb 2024 22:23:33 +0000 (UTC)
Message-ID: <77d7b6bc0a3dd164ba1bdb05d6c1cf81da4cbfdb.camel@castellotti.net>
From: Ernesto Castellotti <ernesto@castellotti.net>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@osuosl.org, 
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Date: Wed, 07 Feb 2024 23:23:03 +0100
In-Reply-To: <bfddfb36-3625-ae0f-75c6-e46ac1ca482a@intel.com>
References: <20240127174803.20793-1-ernesto@castellotti.net>
 <bfddfb36-3625-ae0f-75c6-e46ac1ca482a@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.50.3 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7vB7gibLkyGTW2k8Y0rtN2haB7RBFVgd
X-Proofpoint-ORIG-GUID: 7vB7gibLkyGTW2k8Y0rtN2haB7RBFVgd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-07_09,2024-02-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=500
 malwarescore=0
 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0 mlxscore=0
 clxscore=1030 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402070166
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=castellotti.net; s=sig1; t=1707344615;
 bh=3PCGhD3ZIzPOeAZEXvfxYW7fd6AKFaspyUWW5SzOjIY=;
 h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version;
 b=yryGtQc0QQu0ORkVGxAGPdIuNujeDcw3sOUSu1rTHlxPsLHPw+NHdp6UfBxRyRC6v
 9pqmLQKXI16TRwOW6N+QgZe4R9hDo588EZFrbNGXX9Fpea5hWCe/4nUwtaKsaXTyp9
 RE3haGWymOo60V4klVShfR/kl4UtEXXUl7r0l7+XuBnUklf03p/Y4DYhtwbZPB44Nk
 I3lLBQHHpImj6LnNOxCesncVna/E55Y8yZKYs9IsogN7kBIdSZCKzBR44U9m0n6a5S
 El1H3DEnHw9sH+MCicw2ZBzKSyB0qmw0HIU0AL3y5u9cPxvxf+6Li5/EkxahnRwoIP
 orNvBzGPq/kog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=castellotti.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=castellotti.net header.i=@castellotti.net
 header.a=rsa-sha256 header.s=sig1 header.b=yryGtQc0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Add 1000BASE-BX
 support
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
Reply-To: 20240127174803.20793-1-ernesto@castellotti.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Tony Nguyen,

Thanks for your review of my patch, I'm working to improve it.

On Wed, 2024-02-07 at 13:43 -0800, Tony Nguyen wrote:
> On 1/27/2024 9:48 AM, Ernesto Castellotti wrote:
> > Added support for 1000BASE-BX, i.e. Gigabit Ethernet over single strand
> > of single-mode fiber).
> > The initialization of a 1000BASE-BX SFP is the same as 1000BASE-SX/LX
> > with the only difference that the Bit Rate Nominal Value must be
> > checked to make sure it is a Gigabit Ethernet transceiver, as
> > described
> > by the SFF-8472 specification.
> > 
> 
> Some nits on the patch...

Could you be more explicit in this comment?

Kind regards,

Ernesto
