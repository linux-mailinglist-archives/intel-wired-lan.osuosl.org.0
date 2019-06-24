Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFC751B59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 21:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BA2B84D49;
	Mon, 24 Jun 2019 19:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqPCIHQoVIUZ; Mon, 24 Jun 2019 19:23:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E55D86290;
	Mon, 24 Jun 2019 19:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA10E1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 19:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A654987829
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 19:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XIGlkx8UxbTs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 19:23:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CDF2877E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 19:23:47 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id m29so15796493qtu.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 12:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=XF5fVBoylNZT+Rt5eFhQ6Xg4xHbB+c9F4s1NaC6Ff/8=;
 b=slBuDBfqK6xQMQM5Cvpg+kar+TuxY5ENCZYrUkRSvw3aYF54R6FsZR4tZ7r33aatrW
 kL8hhmG689fOfWUngact/Bi33JqpkPkZd598xkgiHL8SD/nQkcCqkVW2QeyUzEaUzaHq
 eH0OJjVVTvCIKg3AVlYklRhdvGhQX5UItH8FYgKIcltmjs8bJQTIXrL0pF9WKH2rg//G
 dx6TxBVsdo/T32Bi5pEICLDCuY54r0FLHVXS1y9F8O/eKU50QSSr6GCm8bo+blraYGry
 vkI9GGOTn+y3KH4TwLsLDSJGGpeyJ3/IaJMJP8EVrl805YoCdyfXfnLtYe/2DE6rDWut
 L5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=XF5fVBoylNZT+Rt5eFhQ6Xg4xHbB+c9F4s1NaC6Ff/8=;
 b=AAoAR5YBNOqR4TquXpiltjFdWnyzE4Gl0VAW+8YYXbCvu/f+dicYRJTp0XjA2Yy1z0
 0n4p/lqI7m3uhRRPPBXs2rAmW2KkbB5fweuBfaorRgBEtejQo6S2kiAcrxIAJwvzCGHw
 1YMyB83Sg+M406oMHGB+iQo3uPQXbjKgqJJnIO9x8UXFQ70V/7vQ72IUwCLLOkqE0wt9
 OjnPc1Xbx4ETXz5s68yn5qMOUJ/VrqVqNyVC9ILimgpoyrLpeUG9hSk4Z22ap4PyHlhr
 Zc9dNHOyiI0yDkIh7dKo/mQ8i7awvghWufUnRdmKLCyW9SflxUlqTr2zbfGus6B/Vh3L
 fNVQ==
X-Gm-Message-State: APjAAAXyfe7507+c9x0uRvuvTvmoQx7jD3AWesXTOxiuu4btH0nh6zlc
 lSN6aahEQYXcENe1HG3idXSGeA==
X-Google-Smtp-Source: APXvYqyobHYL/ETH1tbtB7n7voBMNgOjmR0hAIAPGupu4dQsQkjyk9ducas3vFju3400CVWWnyRCGQ==
X-Received: by 2002:a0c:8aaa:: with SMTP id 39mr59788011qvv.17.1561404226506; 
 Mon, 24 Jun 2019 12:23:46 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id r17sm6144363qtf.26.2019.06.24.12.23.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 12:23:46 -0700 (PDT)
Date: Mon, 24 Jun 2019 12:23:42 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Message-ID: <20190624122342.26c6a9b4@cakuba.netronome.com>
In-Reply-To: <20190620090958.2135-4-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-4-kevin.laatz@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 03/11] xdp: add offset param to
 zero_copy_allocator
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ciara.loftus@intel.com,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 20 Jun 2019 09:09:50 +0000, Kevin Laatz wrote:
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 0f25b3675c5c..ea801fd2bf98 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -53,7 +53,8 @@ struct xdp_mem_info {
>  struct page_pool;
>  
>  struct zero_copy_allocator {
> -	void (*free)(struct zero_copy_allocator *zca, unsigned long handle);
> +	void (*free)(struct zero_copy_allocator *zca, unsigned long handle,
> +			off_t off);
>  };

Please run checkpatch --strict on all your changes.  The code
formatting is incorrect in many ways in this series.

Please include performance measurements proving the slow down
is negligible in the cover letter.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
