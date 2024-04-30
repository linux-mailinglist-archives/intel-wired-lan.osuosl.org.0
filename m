Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5847F8B67C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 03:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0C59608DD;
	Tue, 30 Apr 2024 01:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AXpFqE-JypHM; Tue, 30 Apr 2024 01:59:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E73A6608BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714442387;
	bh=h1ieZNm089U3B7gvU5qVkYdFuUFs5Tbh6K/92kkSP44=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qn/vFwbpl25/P5GSs1MEQrqXNjIi/djPnmVnl2dh2M0T7Mj//k5JBGXrB3FtQRgq6
	 xy7vxSb7ZseUHZhUlcTmLV0nvEfq0JHCztXUwBqiwO3do64+L0c3ubNQIio6gv+XyK
	 x7x2Hg1I6oqia6c6nW6uVKSOzI1LYK5ckNoMXJOOPZk/VlRU9+OS5gr5EOO6rldl+l
	 wxkz+poPgAxk9Oaa7JpT6nZrScePaxmiwSyIIogi2cbd5NZfBQzF2NEkuHk+5lG7dx
	 UOUvJJwJbSAbtVjRhl7tsprbl9aorVM8Jz2HNBaM2s+u7HOomlZV1IK3Mkvw9x3psE
	 8KMbpLra6/2nA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E73A6608BE;
	Tue, 30 Apr 2024 01:59:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85C421BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 01:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70759816F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 01:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXLM-f4WVpov for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 01:59:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B716A81589
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B716A81589
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B716A81589
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 01:59:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8EA0C611A1;
 Tue, 30 Apr 2024 01:59:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD9DFC116B1;
 Tue, 30 Apr 2024 01:59:42 +0000 (UTC)
Date: Mon, 29 Apr 2024 18:59:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240429185941.6229b944@kernel.org>
In-Reply-To: <73ac167e-abc5-4e7b-96e3-7c6689b5665a@intel.com>
References: <73ac167e-abc5-4e7b-96e3-7c6689b5665a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714442383;
 bh=gmJV+eyXc5ullhBIXnJzh6zZc8wBJRfAl36OX7QTHVY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bbmBjX7kooxLeXCyoVnwZrgSBAgmhglSG6Cx0wtC+TYnkdSOo6h4SSp5csL91Q17E
 i8S5aFbNfT/17PyFCclVWqBz2qfGYiy+m4nyAtxvDH/o9p/0OrNoU7cLLVJdNTiI/F
 Bptd0ku/N4bcdzh/m74Inall2DhFYwmjNyrrgmvOKVsVrgpSoioPXtiClC0ocYDlQd
 cBC2tpQtfqoMayK9C0xJGlinzk7s9HwXGhiwbzG4aJFKUo4qQQ5+YYL60KnWgNi63L
 HtIbEqnmRU58O+T3e1e+lYj3toh59gg3vsWvUI2zzV7cBY4y9JfyNq1WpebNbErdaD
 YjzXJqbaaoXxw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bbmBjX7k
Subject: Re: [Intel-wired-lan] [RFC net-next (what uAPI?) ice: add support
 for more than 16 RSS queues for VF
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter,
 Konrad" <konrad.knitter@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Simon
 Horman <horms@kernel.org>, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 26 Apr 2024 15:22:02 +0200 Przemek Kitszel wrote:
> ## devlink resources (with current API)
> `devlink resource` is compelling, partially given the name sounds like a
> perfect match. But when we dig just a little bit, the current Path+sizes
> (min,max,step) is totally off to what is the most elegant picture of the
> situation. In order to fit into existing uAPI, I would need to register
> VFs as PF's resource, then GLOBAL LUT and PF LUT as a sub resource to
> that (each VF gets two entries under it; plus two additional ones for
> PF) I don't like it, I also feel like there is not that much use of
> current resources API (it's not natural to use it for distribution, only
> for limitation).

Can you share more on how that would look like?=20

=46rom the description it does not sound so bad. Maybe with some CLI / UI
changes it will be fine?

> ## devlink resources (with extended API)
> It is possible to extend current `devlink resource` so instead of only
> Path+size, there would be also Path+Owner option to use.
> The default state for ice driver would be that PFs owns PF LUTs, GLOBAL
> LUTs are all free.
>=20
> example proposed flow to assign a GLOBAL LUT to VF0 and PF LUT to VF1:
> pf=3D0000:03:00.0  # likely more meaningful than VSI idx, but open for
> vf0=3D0000:03:00.1 #                                       suggestions
> vf1=3D0000:03:00.2
> devlink resource set pci/$pf path /lut/lut_table_512 owner $pf
> devlink resource set pci/$pf path /lut/lut_table_2048 owner free
> devlink resource set pci/$pf path /lut/lut_table_512 owner $vf0
> devlink resource set pci/$pf path /lut/lut_table_2048 owner $vf1

Don't we want some level of over-subscription to be allowed?
