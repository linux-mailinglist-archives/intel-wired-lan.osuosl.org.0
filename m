Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CB7831B54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 15:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42AC660B5A;
	Thu, 18 Jan 2024 14:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42AC660B5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705588146;
	bh=4oLtVWsnoAWF076Pa5m4af1IaSXJj8Zu7lON6QReeZ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fpQk6qwvDz2FzPhs8ET5fyV03xhVKK5AX7yeJOADDGJfber0f0PGBZt6AO0XAQ5cX
	 yQmJSRrukaP8sgUNGLlZ1fMXF61T9npdIq8f1hVxcAXc0D092Md9fLxrTDnbE9Y6+q
	 EEOqfRR9sYa6hnSEJpOSGt7PpE+GomGUtISpN/Tex+gyTqHO7GaHtbptz4USKeKHa5
	 hKh71xi4N/AkBSa+n6ISjd9ZCZLJNSGLy2SVdJJI8TX3EUt7EQrdhi2N2ppyt7G6Vw
	 rUhOhDuLNVqfJjoLJLX4VAX2atv2IFQaZ4l2W5eHw1whQD+WWV6tF57pFJXBsbGeO1
	 b+YCridcFWcww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ka7uQFHXd2t; Thu, 18 Jan 2024 14:29:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61FF160AE5;
	Thu, 18 Jan 2024 14:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61FF160AE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C93E1BF404
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2461541F15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2461541F15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mz-kihHpg3LL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 14:28:58 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76FE741C03
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76FE741C03
Received: from [192.168.0.6] (ip5f5af6e2.dynamic.kabel-deutschland.de
 [95.90.246.226])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 15F4861E5FE03;
 Thu, 18 Jan 2024 15:28:37 +0100 (CET)
Message-ID: <267a2f52-7813-4b9b-bdcf-e7eb05b723f4@molgen.mpg.de>
Date: Thu, 18 Jan 2024 15:28:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
 <20240118134332.470907-3-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ixgbe: Cleanup after
 type convertion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jedrzej,


Thank you for your patch. Two nits regarding the commit message. For the 
summary: *Clean up* after type conver*s*ion.

Am 18.01.24 um 14:43 schrieb Jedrzej Jagielski:> Clean up code where 
touched during type convertion by the patch

1.  Clean up the code, touched during …
2.  conver*s*ion

> 8035560dbfaf. Rearrange to fix reverse Christmas tree.

Is re-arranging the only thing done by the patch? Maybe that should be 
the commit message summary/title then.


Kind regards,

Paul


> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   .../net/ethernet/intel/ixgbe/ixgbe_82598.c    | 14 ++--
>   .../net/ethernet/intel/ixgbe/ixgbe_82599.c    | 40 +++++------
>   .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 66 +++++++++----------
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 54 +++++++--------
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 12 ++--
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 50 +++++++-------
>   7 files changed, 119 insertions(+), 119 deletions(-)

[…]
