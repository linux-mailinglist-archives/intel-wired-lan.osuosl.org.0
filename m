Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1C8A8810E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F159611DC;
	Mon, 14 Apr 2025 13:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYdeQ8Gx7NPs; Mon, 14 Apr 2025 13:04:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1B0C61202
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744635843;
	bh=Rhj+3R4Kxv0RM2/3vj0BhWk0VFht+NLjUbhnfecyxkE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F+f6PSkWwC0nXNJFuT4/7iWstl2c12bD5NzyAVPyIxGpnRemqthdfB7SbLBJG9+un
	 Vt31kVcIYmiGfgUFr8xT0KgNefEwo6cKV4YWI4ACX63mTSuWd01NixVYVyet67NYiB
	 89Tbv6qJLuTaD3uP5jXxmUArWpvtfh+zwux+koA85ry8+vZzh13CTyghtMOcPOpfZU
	 wDSWa5oy6q/l9U9rdMHZmD1eBFSXfpRwxsa2tLOZCcIJvSqBy/wHpdVZdoB2sdwQjU
	 bXwl9fWq0qr+NM/ipqLGpHuzAVgUqlgbJHBnDkAgsJ9lh2uwNrgyuzA/n4U9gNo27F
	 l8tKoF+Gy0fzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1B0C61202;
	Mon, 14 Apr 2025 13:04:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AC87250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C71D40BCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:04:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8_jRd8Kqh_LM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:04:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5397C402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5397C402E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5397C402E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:04:01 +0000 (UTC)
X-CSE-ConnectionGUID: 7eVmX5oRQHm7j4FYO/oJPA==
X-CSE-MsgGUID: kZy7oUB/QPmTkm8RFoyB6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="49760435"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="49760435"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:04:01 -0700
X-CSE-ConnectionGUID: pJHfrg0kQOytdkNNGeB8CQ==
X-CSE-MsgGUID: 5FjZVOS3SE+mB+sCKf8g7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130669308"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.98.242])
 ([10.245.98.242])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:03:59 -0700
Message-ID: <feb50784-4efc-4b2f-9c26-9c1b059fd9a8@linux.intel.com>
Date: Mon, 14 Apr 2025 15:03:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ido Schimmel <idosch@idosch.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
 <Z_ZiwNUJy7xGeT8m@shredder>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <Z_ZiwNUJy7xGeT8m@shredder>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744635842; x=1776171842;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Zm1CgYtCNLvYuMxyg3rrAoJm/vpL/E3L6SClMlF+xmY=;
 b=QbcNtLm6VgR4tGIF2HbAlzNI1SUqby2HhDvv3kRX9AIFjIdPUkeM7miU
 U84ldEqHD/1JTFbXt4iXAQkqscGBOfKwf2P4vq8PWiKN4QY8QRvJ/yFp3
 DaKzlK21IIv+EfQcqSYvJmiMS3MzY8OWK3CwHeQws6JsO1NvfI0waaTCu
 vFQJG5uCnouQAnjAEY+sFZePR84r3LPAQhtmtonyoOaZR7Wio2EkTJMKd
 jfoxqBZSGIZ+TS25809Y4YSksqC8c3stCuiOqNtUTmr8jcs05l0rYxV9N
 V1kGBacy8wGpTvtA61bb1WGf26l8ZMZmUkiP+Xa6GF1/L4WDEySQQltbK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QbcNtLm6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add
 link_down_events statistic
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



On 4/9/2025 2:06 PM, Ido Schimmel wrote:
> On Wed, Apr 09, 2025 at 01:36:23PM +0200, Martyna Szapar-Mudlaw wrote:
>> Introduce a new ethtool statistic to ice driver, `link_down_events`,
>> to track the number of times the link transitions from up to down.
>> This counter can help diagnose issues related to link stability,
>> such as port flapping or unexpected link drops.
>>
>> The counter increments when a link-down event occurs and is exposed
>> via ethtool stats as `link_down_events.nic`.
> 
> Are you aware of commit 9a0f830f8026 ("ethtool: linkstate: add a
> statistic for PHY down events")?
> 
> Better to report this via the generic counter than a driver-specific
> one.
> 

Right, thank you for pointing this, I just submitted v2 where ethtool 
get_link_ext_stats() interface is used.
