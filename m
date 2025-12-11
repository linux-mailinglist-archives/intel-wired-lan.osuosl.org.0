Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D0BCB478D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 02:49:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E789A6116F;
	Thu, 11 Dec 2025 01:49:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSJuKFCsV35J; Thu, 11 Dec 2025 01:49:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67E3161387
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765417783;
	bh=4VxzSH0RAxFjh1KUG5Gw6TQgRgK6WCjPPkz2uzUjmP0=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ygR1Ktk2QuW27V+a8jLKg6gJNJLj1MMgLha7oqUIeRGd0sWzP93Km4ElddWgj2rr+
	 pwSmcHrEpvqylhyxAgy2OBJZdUatFKn2r8cMSSRO6liIVYbOrOKE2vQOO09IlCg6H+
	 NQKsHXy+v/CBFvravdfDEwM3i/7927vdRvFePjH0iWQFlxcprR1zS7GTqSXSlhAfoA
	 IySJTg5Ed3D+FtBzwTQN7o/6p9C9ibwfOvolg+7UTNCLhaqMLfQNNoIDkEQFWe6YdO
	 POQzX+I1nR30sBBeo3GnyrpEd18QubNvaCBt1Rz9QZ8lkCg7KTTI7jJsJNipGeIQWo
	 +bYDV7gFKh/tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67E3161387;
	Thu, 11 Dec 2025 01:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B04FE2C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 01:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F4764088C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 01:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2o1kqjFy0CG9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 01:49:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3A55407F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3A55407F7
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3A55407F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 01:49:39 +0000 (UTC)
X-CSE-ConnectionGUID: AlqyqGCvTNGjLzgJ5p1wPQ==
X-CSE-MsgGUID: hQMlOTd2RWWSEp4evTiX0Q==
X-IronPort-AV: E=Sophos;i="6.20,265,1758585600"; 
   d="scan'208";a="8665825"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 01:49:36 +0000
Received: from EX19MTAUWA001.ant.amazon.com [205.251.233.236:19808]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.11.136:2525]
 with esmtp (Farcaster)
 id e55c749a-dfbb-454e-9305-146680b85105; Thu, 11 Dec 2025 01:49:35 +0000 (UTC)
X-Farcaster-Flow-ID: e55c749a-dfbb-454e-9305-146680b85105
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.218) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 01:49:35 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 01:49:33 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <jacob.e.keller@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <horms@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <jedrzej.jagielski@intel.com>, <kohei.enju@gmail.com>, <kuba@kernel.org>,
 <mateusz.polchlopek@intel.com>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>,
 <stefan.wegrzyn@intel.com>
Date: Thu, 11 Dec 2025 10:49:24 +0900
Message-ID: <20251211014925.64457-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com>
References: <b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D038UWB002.ant.amazon.com (10.13.139.185) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765417780; x=1796953780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4VxzSH0RAxFjh1KUG5Gw6TQgRgK6WCjPPkz2uzUjmP0=;
 b=s7xaJYEIps1kqJyRwKYxrc9LUhuVe66qe9u6RE8xztEYwuDPrSPKEkzo
 Z/8GMGCvBNZ1ug092AUpLBnkgfKc5spa0wovWATTic8QivMeoJSVLJll/
 adAv1tjnacoCRLe1I+I6mkF78BZ+KhzNhuyuIbpZMcXz5Q7kWqAQRTWaq
 83b62gEZ8L0wKZz29bHOCEw+nYQ8HWO936Ej9MtBteBs+wbZdJo7bnRUA
 Ta1D/MCPqKiIFPj7GbJu7tF5+o/oV03ol0cQ0xyyLZde42o+4HxJn9W5l
 nR/kzjEKq+ymos3xY5TIZGIYQd3rg71qLNfAfYzDUpDhigK9ItAi09mH9
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=s7xaJYEI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
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

On Mon, 8 Dec 2025 17:14:28 -0800, Jacob Keller wrote:

> 
> 
>On 12/8/2025 9:06 AM, Simon Horman wrote:
>> On Sun, Dec 07, 2025 at 12:51:27AM +0900, Kohei Enju wrote:
>>> ixgbe_recovery_probe() does not free the following resources in its
>>> error path, unlike ixgbe_probe():
>>> - adapter->io_addr
>>> - adapter->jump_tables[0]
>>> - adapter->mac_table
>>> - adapter->rss_key
>>> - adapter->af_xdp_zc_qps
>>>
>>> The leaked MMIO region can be observed in /proc/vmallocinfo, and the
>>> remaining leaks are reported by kmemleak.
>>>
>>> Free these allocations and unmap the MMIO region on failure to avoid the
>>> leaks.
>>>
>>> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
>>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> 
>> Hi,
>> 
>> It seems that ixgbe_recovery_probe()  is only called from ixgbe_probe().
>> And that ixgbe_probe() already has an unwind ladder for these resources.
>> So I would suggest using that rather than replicating it
>> in ixgbe_recovery_probe. That is, have ixgbe_probe() unwind when
>> ixgbe_recovery_probe returns an error.
>
>Right. If resources are allocated by ixgbe_probe() they should be freed
>in ixgbe_probe() and not in ixgbe_recovery_probe() which is a smaller
>function called by ixgbe_probe() to enter recovery mode where only
>devlink flash update is enabled.
>
>It looks like most of these resources are allocated by probe and then
>ixgbe_recovery_probe() is called, which should instead let regular probe
>do cleanup for stuff it didn't setup itself.

That makes sense. I'll revise the patch and work on v2.

>
>> 
>> Also, maybe I'm wrong, but it seems that hw->aci.lock
>> is initialised more than once if ixgbe_recovery_probe() is called.
>> 
>
>Its initialized in ixgbe_sw_init, which is called before the
>ixgbe_recovery_probe, so yes that does look like a double initialization.

Good catch, I overlooked that. I'll address that as well.

Thank you for taking a look, Simon and Jacob.
