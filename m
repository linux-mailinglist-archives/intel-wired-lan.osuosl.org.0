Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB56AB568A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 15:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10AA260F3E;
	Tue, 13 May 2025 13:55:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ueHPbWpd4Yk; Tue, 13 May 2025 13:55:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EA6460F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747144508;
	bh=NjfRD/DsZJJcLPkAcD7iJQ4ZSl1fXjvB1vOhL36DLGM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XMliQVtmQtIqqVi8YqQ/3PkrtTShI9GPklhI1LXbtpswgTfHdjRAH9GgLJ3HSY7Sj
	 c5HAlBLfPkimaQG7NJ6NhWG2N7mDjt2y7H8LNpgCGze27o9dZkuBuNXp/7xe+2zgkl
	 WydrXCTmkkIxJGfEGzLSp+YH7izTowN7AhbITab80Xe4RHUQK3JtC6pMJ1+fR2X/JY
	 CsaK4gPyiBzctBK/l7izVfU+iaySrlRmwAnbFg3ny4AfKnCZerdUm++ld06A3Llm10
	 eVpthddz7KZC8ZNOncSDPsU62h4SEU0lEyHK04+hfwAPGBZT6DwRFyHY7x01Mjk/Lu
	 o2GZsXkpjQcAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EA6460F68;
	Tue, 13 May 2025 13:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 54DA612A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46B5840D81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9RHj0sW6WLC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 13:55:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F67D40A95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F67D40A95
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F67D40A95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:55:05 +0000 (UTC)
X-CSE-ConnectionGUID: bLgSkKiLSXSB7SOtlxPeyA==
X-CSE-MsgGUID: NemAUzANQJ648shD7KlpPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="49108495"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="49108495"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:55:05 -0700
X-CSE-ConnectionGUID: 7XxQKHkaTE6S7XI3NYacNA==
X-CSE-MsgGUID: 0AYzIPiiTZKaWICIsKL6IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="168649104"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.78])
 ([172.28.180.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:55:02 -0700
Message-ID: <a5274434-83db-4fa7-b52d-a0ca8dd16a68@linux.intel.com>
Date: Tue, 13 May 2025 15:54:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zilin Guan <zilin@seu.edu.cn>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jianhao.xu@seu.edu.cn, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
References: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
 <20250513133152.4071482-1-zilin@seu.edu.cn>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250513133152.4071482-1-zilin@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747144506; x=1778680506;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kKIjOmw+tzOAdv1WgTckM5jUXEQMA06F5Lq5DwBDtnM=;
 b=UvzYMTzxM77+JjPozqRyuk2QTZS3RB0+44Fw76D+ne1CfdagPyxtg6mU
 YsPls7t7Eb3v+Koiu6VRqGqOlzRZdwkgYlY/MCxsTb2+aZ/hkbC5wHPaH
 bySYOW5AwVJ02/uXiY0PqjrDyzyxrKV2Z+SidlUeFbpr7AwsM0d+bQb9v
 UABRSIEiQdg8Y5QLuDVqGS/t8uoNs1rqyHrP5Coz++HXSPFWSRFQvMzrm
 eRvzY8RnM0HZHYx4ycj1iQ3UOv1dPKlkBmK7oqJ9MaYKqXl49hs8guLSE
 piX/g7CnNqcA50TkPaSJL9pYqHZzZEsNiEl9CZDh2X9DVhz+n5zAq4Kjy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UvzYMTzx
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe/ipsec: use memzero_explicit()
 for stack SA structs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025-05-13 3:31 PM, Zilin Guan wrote:
> If this change is required, should I submit it as a new standalone patch,
> or include it in a v2 of the existing patch series?

I think you could include it with the v2, as it touches the same stack 
SA structs (if you decide to reuse memzero_explicit() on them).

Thanks,
Dawid
