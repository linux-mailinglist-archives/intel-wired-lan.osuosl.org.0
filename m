Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0B8CF4B71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 17:34:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42797407B9;
	Mon,  5 Jan 2026 16:34:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lHI8GUHOhZOv; Mon,  5 Jan 2026 16:34:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CFE0407EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767630887;
	bh=1LOamlSLXohnT9t6PRUZKsqwrXKDNPBpUB+0BgTJm2c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nXafCLGp4ojggLDcWh+CjmcURrGw7tJTxHbu4ZSyYj+3XUkDIXlNHO/ju/OK6kW0r
	 8bKR7ucwERmrsGofOU7wucQaxIcwnAfggR7lOCWDJ2/Kx0eE4zWBxfF4lCW62/c9Hr
	 wR9SOKdzck8yZX6/l7EmQQ5A4nmmgwBgG44Whx8S801bqKY+XQpfsltdxMZN1ursVo
	 k8rbTqo6rpAxX7NOUxVSeFa3GVp6XKEki/3hZIEoxeX/wmAwJw7wkfvBiHBQ0PaamO
	 78AbkoWjw3ZniQrnN560FLc4zCKdCnDuDN+Mf3mphXgnOjVenuIBqE1vRQMDfFIYdq
	 djVkqgdca5Njw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CFE0407EE;
	Mon,  5 Jan 2026 16:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 64087249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5696F81344
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:34:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nbHr4hMFbWcb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 16:34:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 971B4812D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 971B4812D1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 971B4812D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:34:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DA6624365D;
 Mon,  5 Jan 2026 16:34:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB84C19424;
 Mon,  5 Jan 2026 16:34:43 +0000 (UTC)
Date: Mon, 5 Jan 2026 16:34:41 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aVvoIZYBivorDJkC@horms.kernel.org>
References: <20251218094428.1762860-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251218094428.1762860-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767630884;
 bh=3deJ5qLA3IJhBAb1j74dPS91w2GSpuoSfqjZtqKZIMs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=meb/gSBfx0ENAZ3vrXvgpfRJG68hjNCcXTVVDGsTBC9t4HI7hf6F1rxbr7ECSGJBd
 rPOU5fORuoCdomuf6+kfvIFU0ck9pvJ3+OCP9Pm6mP+bXfxSf95jdPcb2txjgDB4MQ
 qaY6vxHcUyTVr8ZzQChjAeP5Ih2JUEYbRoLhDdEn46QUPq/7jvdedAPHpEnLc6Dm6y
 Xk7wM1ZpZ6Hy3xq4WCj9Sd8rKVHO5zONwmQlGSPrCj/MUpNXXmqcsfzlbTmpZivFJF
 OhaBH9BzIidEO7pTAIGZtynUfxvM4M4xUHH/moouUAbJDtR3GFrxlslhNV13Ie9Iml
 gDIjQGaJ6jrNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=meb/gSBf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix 'adjust' timer
 programming for E830 devices
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

On Thu, Dec 18, 2025 at 10:44:28AM +0100, Grzegorz Nitka wrote:
> Fix incorrect 'adjust the timer' programming sequence for E830 devices
> series. Only shadow registers GLTSYN_SHADJ were programmed in the
> current implementation. According to the specification [1], write to
> command GLTSYN_CMD register is also required with CMD field set to
> "Adjust the Time" value, for the timer adjustment to take the effect.
> 
> The flow was broken for the adjustment less than S32_MAX/MIN range
> (around +/- 2 seconds). For bigger adjustment, non-atomic programming
> flow is used, involving set timer programming. Non-atomic flow is
> implemented correctly.
> 
> Testing hints:
> Run command:
> 	phc_ctl /dev/ptpX get adj 2 get
> Expected result:
> 	Returned timstamps differ at least by 2 seconds
> 
> [1] Intel® Ethernet Controller E830 Datasheet rev 1.3, chapter 9.7.5.4
> https://cdrdv2.intel.com/v1/dl/getContent/787353?explicitVersion=true
> 
> Fixes: f00307522786 ("ice: Implement PTP support for E830 devices")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

