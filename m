Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6B34D95E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Mar 2022 09:05:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D959160C03;
	Tue, 15 Mar 2022 08:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KfD7ntDsXFd5; Tue, 15 Mar 2022 08:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED2660B06;
	Tue, 15 Mar 2022 08:05:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F22AA1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 08:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9724409B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 08:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-APw12ppfMv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Mar 2022 08:05:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08AF540525
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 08:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647331512; x=1678867512;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=y4enjZZAS7X/S/kxpi56jELJKTTArkB1jAVJ96S+GkU=;
 b=KNJh5DJlZYvRmn+yOATIFBUM1kUueaoLKbV8Ajg9eNawitcK9cAhBqtz
 0EIWKNK8FTktU++76CxNVP6QROmhDY6New21YDD3uUOGl4WZgNSzJq5/z
 D64Ney+P9R+EKEF/LM7FIcBUOgDJkfj8K0iJh7qXmumdXrN4g2DdlNpTp
 wiLbSSabXlFrORFzyh47433g4W/2vLWZLB9MJlPHs57s5p6PjlrFfUT9X
 Zyn+i5dOpz4kLvftj1w9YZx+dPn3kO/u+kqOdkS8IJALIBV9QFVJx1tV0
 MXm5jMVaMBCricmU81gkx5s6abmvHOZ1L7m6AL89Gv6ePu3lLHm1JZ1MT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="253801300"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; 
 d="scan'208,217";a="253801300"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:05:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; 
 d="scan'208,217";a="714066732"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.197])
 ([10.13.12.197])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:05:09 -0700
Message-ID: <c9536ff5-72ac-5b78-6eb3-e6c5f415433a@linux.intel.com>
Date: Tue, 15 Mar 2022 10:04:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220301133210.1433609-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220301133210.1433609-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix infinite loop in
 release_swfw_sync
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: multipart/mixed; boundary="===============4612074262985986328=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============4612074262985986328==
Content-Type: multipart/alternative;
 boundary="------------lzgH4m0yFtZhj8OLxKPUEhWY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lzgH4m0yFtZhj8OLxKPUEhWY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/1/2022 15:32, Sasha Neftin wrote:
> An infinite loop may occur if we fail to acquire the HW semaphore,
> which is needed for resource release.
> This will typically happen if the hardware is surprise-removed.
> At this stage there is nothing to do, except log an error and quit.
>
> Suggested-by: Dima Ruinskiy<dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin<sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_i225.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
--------------lzgH4m0yFtZhj8OLxKPUEhWY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 3/1/2022 15:32, Sasha Neftin wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20220301133210.1433609-1-sasha.neftin@intel.com">
      <pre class="moz-quote-pre" wrap="">An infinite loop may occur if we fail to acquire the HW semaphore,
which is needed for resource release.
This will typically happen if the hardware is surprise-removed.
At this stage there is nothing to do, except log an error and quit.

Suggested-by: Dima Ruinskiy <a class="moz-txt-link-rfc2396E" href="mailto:dima.ruinskiy@intel.com">&lt;dima.ruinskiy@intel.com&gt;</a>
Signed-off-by: Sasha Neftin <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)</pre>
    </blockquote>
    <span style="-webkit-font-smoothing: antialiased; box-sizing:
      border-box; color: rgb(36, 36, 36); font-family: &quot;Segoe
      UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
      Emoji&quot;, sans-serif; font-size: 14.6667px; font-style:
      inherit; font-variant-ligatures: normal; font-variant-caps:
      normal; font-weight: inherit; letter-spacing: normal; orphans: 2;
      text-align: start; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;" lang="en-US">Tested-by: Naama Meir &lt;</span><span
      style="-webkit-font-smoothing: antialiased; box-sizing:
      border-box;" lang="en-US"></span><a class="moz-txt-link-abbreviated" href="mailto:naamax.meir@linux.intel.com">naamax.meir@linux.intel.com</a><span
      style="-webkit-font-smoothing: antialiased; box-sizing:
      border-box; color: rgb(36, 36, 36); font-family: &quot;Segoe
      UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
      Emoji&quot;, sans-serif; font-size: 14.6667px; font-style:
      inherit; font-variant-ligatures: normal; font-variant-caps:
      normal; font-weight: inherit; letter-spacing: normal; orphans: 2;
      text-align: start; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;" lang="en-US">&gt;</span>
  </body>
</html>

--------------lzgH4m0yFtZhj8OLxKPUEhWY--

--===============4612074262985986328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4612074262985986328==--
