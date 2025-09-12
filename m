Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D41FEB5466B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 11:04:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8080060BAA;
	Fri, 12 Sep 2025 09:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8b9BOVg2HjTB; Fri, 12 Sep 2025 09:04:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04DD160BC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757667846;
	bh=BSlu08PSszZ/mxnGWShx1dCtCSA0/iScz0R3mKDLlJc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TInZIcEK4B4YK9JNt3J08+TpDNsgPU7qzNjq9mK/TwSuSbl94K2oSMlH1U24qGE4W
	 SIh/ubkW5irAD2J1FJUm3yegIBmepVs9s4xnJynmdgGGvJTc76zsl6DuuGYb6Yj34z
	 +1m6fmTPiTNatrn3K7/TIY7H89Y5Ahu2Qqntg1oeCKO7/wtLsvj2ydKOfaoHbTdnGV
	 MdErGdgf3GWLmq/QfmV5yWyAIkO8sKFUL/k5MJOBWU9NMNj5pbO9Jwha43Q7xbkv2V
	 QPbv6l1prLfiod99eJqjF30c2Q2Ve6/QB3TW6bGnqQgA0f7V4Q/e+9Chuxec4OUvTJ
	 rwncWlmcmjJ9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04DD160BC5;
	Fri, 12 Sep 2025 09:04:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6944892E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FD7340498
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0Eeu8wrHmZY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 09:04:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE9DF4048F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE9DF4048F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE9DF4048F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2F1CD443D0;
 Fri, 12 Sep 2025 09:04:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDABCC4CEFE;
 Fri, 12 Sep 2025 09:04:01 +0000 (UTC)
Date: Fri, 12 Sep 2025 10:03:59 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250912090359.GY30363@horms.kernel.org>
References: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
 <20250829101809.1022945-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829101809.1022945-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757667843;
 bh=6P97i865U08jWJQoiTmLd/zDtEt1kPmipD6fJxtrMLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fH2i35iK+XMUhPaRiq+syIGF0Q1YriCNDDGl6t4jbGBMTCcC4TYK23Oq0H3YX2tow
 X1+tSVSsNWpYbnBPsPEOoKUU59IzjUrbTfoynhW3QYlSCQP+2kUSeLRf5h44HZbvJ8
 3V9KuCldVCU4XUHJF3C0KPI4ZQmkHz3gLgVezpVMFChVHf9XfIlb+8Ad0czyKvpvOY
 OcrdiWOy6xdnqfemQ9dHfqHOlen9ArNJtw1/k1G2Y9MaRe6c0/Dggvl5SYcm9PCDtc
 3Tb+Q70bjPy0pWwuGBFbpWCPKUlorTbIIi6jQiYyyrLtZXgqw+cibvCHFYP9JKTvHj
 Ri25W3NEX0rzg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fH2i35iK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] iavf: add RSS support
 for GTP protocol via ethtool
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
Cc: anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 29, 2025 at 10:18:08AM +0000, Aleksandr Loktionov wrote:
> Extend the iavf driver to support Receive Side Scaling (RSS)
> configuration for GTP (GPRS Tunneling Protocol) flows using ethtool.
> 
> The implementation introduces new RSS flow segment headers and hash field
> definitions for various GTP encapsulations, including:
> 
>   - GTPC
>   - GTPU (IP, Extension Header, Uplink, Downlink)
>   - TEID-based hashing
> 
> The ethtool interface is updated to parse and apply these new flow types
> and hash fields, enabling fine-grained traffic distribution for GTP-based
> mobile workloads.
> 
> This enhancement improves performance and scalability for virtualized
> network functions (VNFs) and user plane functions (UPFs) in 5G and LTE
> deployments.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


