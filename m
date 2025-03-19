Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C593CA68C99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 13:17:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34DC661015;
	Wed, 19 Mar 2025 12:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l8fq9mkCmVdO; Wed, 19 Mar 2025 12:17:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 869A161017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742386671;
	bh=ob6wskkogLoRMhr0UYgDX3LObpGDLlJbvHD2Kv5hea8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KYDoNJdTfEVytoxT3ExYxQgxd4okmxMPZ4eCjsS/0Y+K/YO+DuU2OqfjYzmwEdBKt
	 x3/WTtsHQIPomF42udlX0vGZUkygAfft2dHh6XmJ6WlJv8Q5muWn5EPa5JSIDOgVSr
	 o2r/aLwghkdHGkmwmwMNFPnwTIgcmgkxPzIIcZCYWPTZjNYETwIOtrnFV+Xk0MyL8b
	 DGyqJsGeSUQ4dYknv0RDBqiLrI68YxOXrXDltnidvobqXYhMcSKl24uIINMO5QFmNg
	 UwAFDMt1kYR9wRONpj5BsVtl6URC7lspl25UkBG3JngFtqUA245JADL+VaHBUT/mub
	 6ji9/rqkJyTKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 869A161017;
	Wed, 19 Mar 2025 12:17:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 736D6CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43B5940E2C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:17:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FXG1bdkKk0bk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 12:17:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8575F40E04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8575F40E04
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8575F40E04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:17:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 97DBDA490A3;
 Wed, 19 Mar 2025 12:12:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C854FC4CEE9;
 Wed, 19 Mar 2025 12:17:45 +0000 (UTC)
Date: Wed, 19 Mar 2025 12:17:43 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250319121743.GB280585@kernel.org>
References: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742386666;
 bh=5RqF4Hm4RWUNVCNQ6JIF/q+to7IRt3EfK0w5Bt5JVag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dSSWe1NrwVIM+7AzVz1cKCWi7jlwMO68r49neFA1O2Ccl9sngJ5SMbH/U/tnowX0H
 oTwGsTCY+AssN9ybybmaixwEZ8/TXQr1ECReaCBF+cucg2YC28PZ0fcw50nTy901+s
 llCy5g8TXRMzo2kLjGbAxUzbToI0WNC9s0OFsLsfDDfJEdOVG49QgyoDalokf8wXEr
 6ocSXhPSrL4PbnQBEqsDFjsgkj4NT9i9iwoWmA4InOqH2F+MuR54fpWOdqrZGMFT0v
 7n68r2Qa2SYiui7PGmNcBVBdBtxQfhDOaY9EaW08UW3AG8N9RX+WDD/YrBxIDg1fLU
 FgTZlhfIR4aZw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dSSWe1Nr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
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

On Fri, Mar 14, 2025 at 09:11:11AM +0100, Martyna Szapar-Mudlaw wrote:
> When adding a rule to switch through tc, if the operation fails
> due to not enough free recipes (-ENOSPC), provide a clearer
> error message: "Unable to add filter: insufficient space available."
> 
> This improves user feedback by distinguishing space limitations from
> other generic failures.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

