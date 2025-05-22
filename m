Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D94AC11FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 19:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FC0161484;
	Thu, 22 May 2025 17:21:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfbsgpMJbJhF; Thu, 22 May 2025 17:21:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C8C612F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747934476;
	bh=hQMGsc/f5Q+VmSjd8DM3W+d0MkZNFRIhOQckmIOO+h4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HOIKfvktU2vdrrhL4t+kkMdTjb2/HKD7ZKeMg/vepqqjkqQaZS3cAaJ1zMR6SuDjp
	 cUSKiZUKGYctHyJwVAvR2imVLXr7/qyLTFjTXnkI0BnR8dlEM7TN8pwBNi5qMNPQEb
	 YnXnH3gAPEIuYmpDwdaOEOWSHmsZIkwjyoka/jXbWQeZSSGLMoMO61JOVsomihoWG+
	 bsUeNPZndvCfBKyHYUg+jwAAuQ1iAVmkQ6JHhzV+zpnxAgouC5J0pkNNRmtKiK9Pa5
	 7t1008Zpwjyo11caagi4HoeeI41ptzuu0lXT6B2Ksy5ejvlZkGClp5mmdAQ8CzQSj7
	 RbZTNkkkLloQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C8C612F1;
	Thu, 22 May 2025 17:21:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4043D237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3228C4056D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:21:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ah0u9s77SzC4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 17:21:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C5BB400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C5BB400D2
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C5BB400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:21:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F3C5762A2B;
 Thu, 22 May 2025 17:21:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65102C4CEE4;
 Thu, 22 May 2025 17:21:10 +0000 (UTC)
Date: Thu, 22 May 2025 18:21:08 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, darren.kenny@oracle.com
Message-ID: <20250522172108.GK365796@horms.kernel.org>
References: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747934472;
 bh=IHokm80AvQoeLm7V8X5gQdcJ8Sn6Kew2FcZbLHZKjOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g4LutPHn7c8o3nAYAn8ij9FvAMc5D1Bur8iwE8oA1I1UlW/5ghPTzVeKCHUGyDRko
 dk2Gm6MMkuM5P232UB+qMASq7h1gz8zegWSQqbbksGV2DnREdByoJPsrryIWtg/zir
 ZUWxBhb1NDsumgfhknDWzQCQIuSZVMZYcsyXVUuwjq4Jc34cH8h8pNWApPRx/x4gwi
 4m/kDOblhP6qYp/Vi7xmKJYpvANMQ3/iYHpTAQo5nFBLP/gfpbCo44tCRN779x+aOF
 PMfLEMLenKqBQYAwyNGKN99VPoorI1q9UhRp4eOg7Q7nzGJaH8zqTcWr9cx0HCjMuG
 2I5ctQB4qgnIw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=g4LutPHn
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix typos and clarify comments
 in X550 driver code
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

On Thu, May 22, 2025 at 12:47:26AM -0700, Alok Tiwari wrote:
> Corrected spelling errors such as "simular" -> "similar",
> "excepted" -> "accepted", and "Determime" -> "Determine".
> Fixed including incorrect word usage ("to MAC" -> "two MAC")
> and improved awkward phrasing.
> 
> Aligned function header descriptions with their actual functionality
> (e.g., "Writes a value" -> "Reads a value").
> Corrected typo in error code from -ENIVAL to -EINVAL.
> Improved overall clarity and consistency in comment across various
> functions.
> 
> These changes improve maintainability and readability of the code
> without affecting functionality.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 28 +++++++++----------

...

> @@ -1754,7 +1754,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>  	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
>  
>  	/* If no SFP module present, then return success. Return success since
> -	 * SFP not present error is not excepted in the setup MAC link flow.
> +	 * SFP not present error is not accepted in the setup MAC link flow.

I wonder if "excepted" was supposed to be "expected".

>  	 */
>  	if (ret_val == -ENOENT)
>  		return 0;
> @@ -1804,7 +1804,7 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>  	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
>  
>  	/* If no SFP module present, then return success. Return success since
> -	 * SFP not present error is not excepted in the setup MAC link flow.
> +	 * SFP not present error is not accepted in the setup MAC link flow.

Ditto.

>  	 */
>  	if (ret_val == -ENOENT)
>  		return 0;

The above notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

