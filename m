Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7944A3A7E9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 20:44:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3491540BE1;
	Tue, 18 Feb 2025 19:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7rqWlyvuUjm6; Tue, 18 Feb 2025 19:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB9C140BDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739907865;
	bh=yfBdMa35IlSvleFq6g2qm9/i3iJnx+wl9Zmp0L3NA0g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WHxUnkSv3TE6qa/0O5chvrC7+LmUyXt3rKILt14ED1evWJyvfLfSRIAN8vQO/vh4l
	 6FUIVKr20oRxjgna8MgQRfOBMYlWIjvssR/Lvt7vIVeltTg2FdSoO9HHczMxh7MavV
	 GXX9ib50wCKVY9aBeiiOGTWoC+RbxXwEDTzDRiIlbEwzH4veOCDYRUtXXU0oLC0W3+
	 o3YPcNlROhWpQ/QJzXK61wjZmbM7ZQS9FUdT7OQ3X0CsEE0mpjRnoR1nwQ5FzMykNP
	 tphCQE6uqVS8fI2a9LJ2ynSkODrpwqWGHBN2UZm56ZVi2VuKdVe8P20SooO641vyzt
	 znHrnbgEwvvxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB9C140BDC;
	Tue, 18 Feb 2025 19:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AC272968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BAFB81DE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RR3ZcurWQpvg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 19:44:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0280181455
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0280181455
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0280181455
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:44:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BEF08A41327;
 Tue, 18 Feb 2025 19:42:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EAC9C4CEE2;
 Tue, 18 Feb 2025 19:44:17 +0000 (UTC)
Date: Tue, 18 Feb 2025 19:44:15 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250218194415.GL1615191@kernel.org>
References: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739907858;
 bh=yfBdMa35IlSvleFq6g2qm9/i3iJnx+wl9Zmp0L3NA0g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sOUNg1mS2+ePoB/va/94jEyM8uXG3oGoylobTT9qrOxbh8bosEj5q27D143uxrVL/
 0hYpZC27IGVKDhBr71U/EMLKfpbzDNrmndz5VHmc8qq1+8v0+CTSMGSz491C3EqcsF
 Z7SoyIqlQ53pb4uSjDiVt6hGwGm6gy8EzX84s3bNdy8w1SEm4xbS2u00Dz8iJqvsHz
 9auyipr035MthzSfjDr8izQfB3SNVb9knXPRtdomluOSWFUm/PfqePZ9r2Y+wVDGFk
 YEDEeCB6iLVoaShdGsMMRnghfoLrwBL0NYXAfjaB68q7s5qNagFBPv2XSSXd5sMyjj
 R4ZAUKNNSPy/w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sOUNg1mS
Subject: Re: [Intel-wired-lan] [iwl-net 0/4] ice: improve validation of
 virtchnl parameters
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

On Mon, Feb 17, 2025 at 11:27:41AM +0100, Martyna Szapar-Mudlaw wrote:
> This patch series introduces improvements to the `ice` driver and `virtchnl`
> interface by adding stricter validation checks and preventing potential
> out-of-bounds scenarios.

Hi Martyna,

The above talks about this patchset in terms of improvements rather than
bug fixes (that manifest). If so, I think this should be targeted at
iwl-next (i.e. net-next) rather than iwl-net (net). And the Fixes tags
should be dropped.

...
