Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A6573F46E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 08:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DC7682062;
	Tue, 27 Jun 2023 06:22:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DC7682062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687846943;
	bh=fVqrUZqST0fB47nsIPTIooFRryJQoRoxmVuNwghTIAc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qbT9kR1oc4LkXqaZGxJAjrfzFGgmh+OR33vIWnPThCAOG0DETCRxogTVpYCTFef9T
	 tT8yfg0g2yGXGYrS6F1L7P7kssvVfdTm1VWdQtal5ynRRGt/sloyG9Wc0SFxdVSDsg
	 UtNXkpX0QzR/PGHHB9Mwwp6eH7T49anc/dLzVU9Gy37o+R+WfNu1D0oIXVPiyAojMz
	 369dFnQw/jq18flINrbpGNIvNzn5ogrjIsN6YBacNpEciOEFHPWgDU4yCoDSBKYiwd
	 iC1Tcj/Aix+HVkDLV+13IxsQStu3glMfGB9YckwWxz9w/Yaw5kJlFgBduSmxMQdwVV
	 wV0FbdMTnK3HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUxTbfUivnnL; Tue, 27 Jun 2023 06:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2248E82015;
	Tue, 27 Jun 2023 06:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2248E82015
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39AA31BF2F5
 for <intel-wired-lan@osuosl.org>; Tue, 27 Jun 2023 06:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 113F960F4C
 for <intel-wired-lan@osuosl.org>; Tue, 27 Jun 2023 06:22:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 113F960F4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rHGgWRIv-6W for <intel-wired-lan@osuosl.org>;
 Tue, 27 Jun 2023 06:22:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 644D36080A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 644D36080A
 for <intel-wired-lan@osuosl.org>; Tue, 27 Jun 2023 06:22:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341829637"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="341829637"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 23:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666576719"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="666576719"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.65])
 ([10.13.12.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 23:22:12 -0700
Message-ID: <f9910e0a-b583-d202-fb69-a4586bbc453d@linux.intel.com>
Date: Tue, 27 Jun 2023 09:22:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: tee.min.tan@intel.com, intel-wired-lan@osuosl.org
References: <1686281322-26581-1-git-send-email-tee.min.tan@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <1686281322-26581-1-git-send-email-tee.min.tan@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687846936; x=1719382936;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MvPY8lV5Uj8KqM2fJgMT5SAhRp03tiSEkOiae1ifOS4=;
 b=i9X/ryfl0R6c108k5jaNXGplr2ql9HfQWy8OA/zoLtg5JAK3b/rY8G7O
 b598z15vXsrBryGK3qfKobOQ03TBnxvjCo0UDSJxbobJy9Wh4j5m32GSB
 vGIUfaWa5NCZls6FiZeobzZKg93cWwoLsUDDJoMLVwEKjSt5mFRXXl2di
 93UXn52YnBggnJSnOFWdnakISBFc6LLZAVDUX+u0biU4PwVk2538Utjbc
 Y9g6njg/8wMFUhLzvy19ScP2THxnYtHQt5pye50VLk0D9MEU5l/2TlQa1
 dKguK6vU0WOQ322HOz0aGmo5Ec1OofDQY0fKXFmgpzHy7On5p42NUtpuX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i9X/ryfl
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Include the
 length/type field and VLAN tag in queueMaxSDU
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
Cc: anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/9/2023 06:28, tee.min.tan@intel.com wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> IEEE 802.1Q does not have clear definitions of what constitutes an
> SDU (Service Data Unit), but IEEE Std 802.3 clause 3.1.2 does define
> the MAC service primitives and clause 3.2.7 does define the MAC Client
> Data for Q-tagged frames.
> 
> It shows that the mac_service_data_unit (MSDU) does NOT contain the
> preamble, destination and source address, or FCS. The MSDU does contain
> the length/type field, MAC client data, VLAN tag and any padding
> data (prior to the FCS).
> 
> Thus, the maximum 802.3 frame size that is allowed to be transmitted
> should be QueueMaxSDU (MSDU) + 16 (6 byte SA + 6 byte DA + 4 byte FCS).
> 
> Fixes: 92a0dcb8427d ("igc: offload queue max SDU from tc-taprio")
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 16 +++++-----------
>   1 file changed, 5 insertions(+), 11 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
