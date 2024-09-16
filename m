Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3DB97B1B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 17:02:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68AFC608B9;
	Tue, 17 Sep 2024 15:02:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x_ocxEx8WSDI; Tue, 17 Sep 2024 15:02:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2E6660E06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726585376;
	bh=Jy/uSXxDhY1rKDVJ6z7Vux15OXIdWeFq0dxU2LqcSNI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cnlC70UsRILQpRGhcHzNNJjeFqwVWULQcTIuR+PyubcyE8Sc2D5v4WGNWWwWNiNZp
	 e6Axf4AaCVGgwQ3HlT/7zRTyYQN+mjskqXheVfJ61urvJ/6DVviQ9ygHjUX+fxH6Ft
	 fyCwpPf0PE2oQBZHGLBl4QS23d6Bp/NSBLm+zqHXXX9Czmv0aVWvg9I/NNjd7ktN6D
	 y48cnAW5KXa8kZrpAvpyATVt1+3BaQp+ZMCgNuqzd8ICk1Yn97wOdAH6AcbV4G/E7S
	 X2nxCs/6FHkYNpSsIP1hkSHUlHY0cLaysZAteSBkPr5UVkwXQaXOdomBZxCHc/EY3w
	 F/3vJhPJBKpZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2E6660E06;
	Tue, 17 Sep 2024 15:02:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57CD51BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 09:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 440B7402CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 09:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_QhXuWU26zo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2024 09:37:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.3;
 helo=m16.mail.163.com; envelope-from=qianqiang.liu@163.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 205784020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 205784020C
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
 by smtp4.osuosl.org (Postfix) with ESMTP id 205784020C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 09:37:05 +0000 (UTC)
Received: from localhost (unknown [36.56.252.231])
 by gzga-smtp-mta-g2-5 (Coremail) with SMTP id _____wDnCDs1_Odm2FQdHg--.28295S2;
 Mon, 16 Sep 2024 17:36:53 +0800 (CST)
Date: Mon, 16 Sep 2024 17:36:51 +0800
From: Qianqiang Liu <qianqiang.liu@163.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Zuf8M0eh7AuQ0Zks@debian.debian.local>
References: <ZuQ6aCn7QlVymj62@iZbp1asjb3cy8ks0srf007Z>
 <c9c582a2-2d72-4258-ad67-8d159cf256d6@intel.com>
 <b7dabc2d-19a4-42f4-ba5c-31e1803d821a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b7dabc2d-19a4-42f4-ba5c-31e1803d821a@intel.com>
X-CM-TRANSID: _____wDnCDs1_Odm2FQdHg--.28295S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVs2aDUUUU
X-Originating-IP: [36.56.252.231]
X-CM-SenderInfo: xtld01pldqwhxolxqiywtou0bp/1tbiRRtcamXAo9AW6gAAsC
X-Mailman-Approved-At: Tue, 17 Sep 2024 15:02:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=Jy/uSXxDhY1rKDVJ6z7Vux15OXIdWeFq0dxU2LqcSNI=;
 b=Ja+hxe/u5pB6NuFBpfWoOCeRrL8KnVjOUAgPRfQvfKmublO8YX/8D+AGsWwUmw
 z6AAjHYc3FsYdQzYESfWoB5KZocCOkxcYKh1OM07lXVTyneiP5IkQezv7kAOKG6v
 IDy7DthgJ7pTV4un+3gW/mV7XCiTg0hI+sGJ4a6Zl53AM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=Ja+hxe/u
Subject: Re: [Intel-wired-lan] Is this an out-of-bounds issue?
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 16, 2024 at 11:19:32AM +0200, Przemek Kitszel wrote:
> ugh, sorry, it's already public:
> https://lore.kernel.org/all/20240823230847.172295-1-ahmed.zaki@intel.com/
> 
> awaits our VAL

OK, thanks!

-- 
Best,
Qianqiang Liu

