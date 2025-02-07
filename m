Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 510BCA2C089
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:25:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C43038107D;
	Fri,  7 Feb 2025 10:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DqK3Q9JS6QQI; Fri,  7 Feb 2025 10:25:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7106810B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738923918;
	bh=Lja0VEgMbAUT5aCxumJQSLEEY1cqyf8McBodGV/vQG4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SAgsXF/Zoe1Ee0eJ9PDqdx+iI8K5KKBnUxf75w4s5o2rG51lmQH2qh+jp/n3XN/g2
	 Ki0AWDq+6WpLdwYUKFs8KT9UvwY0TS78gjnRCFeIS8MRA86O3gOWwhVYjiz7opjoyD
	 GZeBImF/laHbD/HswH7l8ZmqiIWWv3xYlYMTLPHCnqWFHPrr9FoiMRu2VPTLow7Iwc
	 M9lVE9ywYNzYd0vwi8k7V88BynTfoBFQx+inJ/ge8lC1pQ6bzVJ0r3wajM8WWPjvQ9
	 822PYcNIVB3I4MyTMFdVnF07DW6ST09TmLJbWiwH0eIkVx0hWbqr/mGYm9nMc4MQTJ
	 CymDUmf1hwjVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7106810B7;
	Fri,  7 Feb 2025 10:25:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 697D9C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64A0E704C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mLNEPOoQik9n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:25:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ACDB2704D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACDB2704D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACDB2704D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:25:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 394FF5C15C1;
 Fri,  7 Feb 2025 10:24:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 552F7C4CED1;
 Fri,  7 Feb 2025 10:25:14 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:25:12 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250207102512.GN554665@kernel.org>
References: <20250206151920.20292-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206151920.20292-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738923915;
 bh=I2q0FoV43+9sH+XTQuRkQL4F9g4e1iWfAdsRC+49Rpw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cwUMJ7zMM+LqXh/1XBLgwPWA2922Qjx9EaIefT3IyK8iyef3+dC5dK5MSLYLV7Htc
 uBkZdLYHjVHmLkvmyieVbnJr007LXnohmpBfd/4L6dl5ZRaGc/o5QFvwJAz2Y6NNfA
 HbIkZZyMGSXQN4f5f1j+oqXr++zFaGkbfP6KMTDHeMluD2IKsWkjTNAVuJgtevx9kD
 U+efDr2k5tvQsnWEhMl9WAGcY0nRiRj2Il3//rVXBCCeVMX5KL01YURu94IRkBbAl8
 WRLeu/PBukt5MMoJwtRYrYuE0mEPDE/fl7Yv9ozJ3gW+bZ004slDKD7Wq+0LjQw+yr
 9uGjv9Ji6ABYQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cwUMJ7zM
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix media cage present
 detection for E610 device
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

On Thu, Feb 06, 2025 at 04:19:20PM +0100, Piotr Kwapulinski wrote:
> The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
> device") introduced incorrect checking of media cage presence for E610
> device. Fix it.
> 
> Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/all/e7d73b32-f12a-49d1-8b60-1ef83359ec13@stanley.mountain/
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

