Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC5D4E25C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 12:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9A0C401F7;
	Mon, 21 Mar 2022 11:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKbbBsAq1dUB; Mon, 21 Mar 2022 11:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6474401E9;
	Mon, 21 Mar 2022 11:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C32CC1BF995
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCF1E4058D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yq1CsdSQepdC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 11:55:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DA52405A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647863739; x=1679399739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mfbOq5iAK8SE23byJMRPvctNFXZ1aD5KZOZcb0LP44M=;
 b=C0jivMSfcy9FRALoS/BGDzZapXKAUfisJJStvuPDO9eUEiB1jjeHIQiW
 RBdiJ6zL1HVb6VzTgIz4zF29uHmhepnfGjfWpggxRpzvWcU1SOoobMI9z
 51zhxcYlrCFHI8+TgHeea733f206DYgwswDOh02+hPJbbSGqukpI7FMuM
 cWNURMoRxOLqJELjGIXLXjvM2PCO8kNC4waRDOV/K0Lrj5mjMjOFbPWZ+
 MZO250mqpMXIjT8Fgpv/SrqI1zXX29Wq4Muh9p5dHk/Wm+TAO+cd860OU
 +X/KUsbicVp3h2RQOfFYUGR99g7CAJZgRPyes8b5JkKWTNCg5L9cswVyB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="256350087"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="256350087"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 04:55:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="692147795"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Mar 2022 04:55:33 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22LBtV4B012712; Mon, 21 Mar 2022 11:55:31 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Wan Jiabing <wanjiabing@vivo.com>
Date: Mon, 21 Mar 2022 12:54:11 +0100
Message-Id: <20220321115412.844440-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
References: <20220318094629.526321-1-wanjiabing@vivo.com>
 <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner
 in ice_gnss
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 18 Mar 2022 13:19:26 -0700

> On 3/18/2022 2:46 AM, Wan Jiabing wrote:

Hey Wan,

> > Fix the following coccicheck warning:
> > ./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()
> >
> > Use min() to make code cleaner.
> >
> > Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> 
> There are build issues with this patch:
> 
> In file included from ./include/linux/kernel.h:26,
>                  from drivers/net/ethernet/intel/ice/ice.h:9,
>                  from drivers/net/ethernet/intel/ice/ice_gnss.c:4:
> drivers/net/ethernet/intel/ice/ice_gnss.c: In function 'ice_gnss_read':
> ./include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
>    20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>       |                                   ^~
> ./include/linux/minmax.h:26:18: note: in expansion of macro '__typecheck'
>    26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
>       |                  ^~~~~~~~~~~
> ./include/linux/minmax.h:36:31: note: in expansion of macro '__safe_cmp'
>    36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>       |                               ^~~~~~~~~~
> ./include/linux/minmax.h:45:25: note: in expansion of macro '__careful_cmp'
>    45 | #define min(x, y)       __careful_cmp(x, y, <)
>       |                         ^~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_gnss.c:79:30: note: in expansion of macro 'min'
>    79 |                 bytes_read = min(bytes_left, ICE_MAX_I2C_DATA_SIZE);
>       |                              ^~~

Use `min_t(typeof(bytes_left), ICE_MAX_I2C_DATA_SIZE)` to avoid
this. Plain definitions are usually treated as `unsigned long`
unless there's a suffix (u, ull etc.).

> cc1: all warnings being treated as errors 

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
