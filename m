Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C0788E9C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:48:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD73E606EC;
	Wed, 27 Mar 2024 15:48:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F9GDtNN6DrB1; Wed, 27 Mar 2024 15:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4815C60678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711554529;
	bh=9udJdCfAu+GsjTwIk+YM9kSiTohEuVVkPwuhH7r748M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tFc2g9iNf6qZNBlU1sv0KTTS+u1eGu7FD8+qzPJxe12NvZdjfh5hRjq+G2Q2wfzDN
	 DV2QZu6GNF1zaZMGkXD36XsIMPpv1VjQLSf5zfpP0S61YBzU0daFMxgpWM4gybE+/c
	 oOadfM5oT8tylxQqc/mqtb9rXkvgvJoBbuU9yB4HBZHTfUO71ckvi0sOHwK5YiO557
	 jJGIE/E8E5ArRZI9EqP/PxCNuLo3ozFIzFRXH5cbvdv2f7ezaeyY0mSfUmSr9qxGmO
	 2Bucsznv0+RzcENq4meeDjVb02auKk7k38/OqW65LgKSYxs0LU6uXTioz3WVDevLcI
	 n2dZ6nMuy4BNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4815C60678;
	Wed, 27 Mar 2024 15:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C71A1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC861606B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vU-UCVoIhYK5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:48:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F05F560678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F05F560678
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F05F560678
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:48:45 +0000 (UTC)
X-CSE-ConnectionGUID: fyuDKnhcRiy+ufKH3b4S6w==
X-CSE-MsgGUID: 48peMht1TSanJ5U/C6kJBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="24119412"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="24119412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="914916637"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="914916637"
Received: from smile.fi.intel.com (HELO smile) ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:48:35 -0700
Received: from andy by smile with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rpVVe-0000000Gjzz-2WQr; Wed, 27 Mar 2024 17:48:14 +0200
Date: Wed, 27 Mar 2024 17:47:56 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZgQ_rP5KnMfL-0b2@smile.fi.intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-3-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327152358.2368467-3-aleksander.lobakin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711554526; x=1743090526;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/Fy+XebLi84xhsuIn0Baks2bdrJHrKjSXbeknmduzQQ=;
 b=kkSyUHW/2PYK1GRO1HK04wjlFtJoeWO6hQScOxYolLGEAsxqsuURWqVh
 TAjj80i9Nnq/z1qdR8Y42vtSL7nhyJFaWuRO4zxps2JM612FrdnT7HO3O
 kHC3G/bxygHwUmGVHwllr6VBgP1aUPFc303MfQ73Ah9DDj8BlNN64wPwb
 UyUvowuF6nua91zFW8vLFQr0d5Lm05WJTVXT4LUbGRWN/g5yNxTkri1Eq
 kB82A2Sx5CFPaFcYftIvyRcEDcLC5XAk10+9nlRAAWm3Tl1yMzz16si3o
 4WKMtqVx2K3jDP5Sz4xHVF8R7LbFN+kIHaudo1pUlr12/FGZkorDgI60E
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kkSyUHW/
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 02/21] lib/test_bitmap:
 add tests for bitmap_{read, write}()
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
Cc: Yury Norov <yury.norov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Alexander Potapenko <glider@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 04:23:39PM +0100, Alexander Lobakin wrote:
> From: Alexander Potapenko <glider@google.com>
> 
> Add basic tests ensuring that values can be added at arbitrary positions
> of the bitmap, including those spanning into the adjacent unsigned
> longs.
> 
> Two new performance tests, test_bitmap_read_perf() and
> test_bitmap_write_perf(), can be used to assess future performance
> improvements of bitmap_read() and bitmap_write():
> 
> [    0.431119][    T1] test_bitmap: Time spent in test_bitmap_read_perf:	615253
> [    0.433197][    T1] test_bitmap: Time spent in test_bitmap_write_perf:	916313
> 
> (numbers from a Intel(R) Xeon(R) Gold 6154 CPU @ 3.00GHz machine running
> QEMU).
> 
> Signed-off-by: Alexander Potapenko <glider@google.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Acked-by: Yury Norov <yury.norov@gmail.com>

> Signed-off-by: Yury Norov <yury.norov@gmail.com>

This is a bit strange.
Can you explain the SoB chain in this patch and similar which have Yury's SoB?

> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

-- 
With Best Regards,
Andy Shevchenko


