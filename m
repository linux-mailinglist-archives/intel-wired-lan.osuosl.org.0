Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B5BBE476F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 18:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A5194041D;
	Thu, 16 Oct 2025 16:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id we7Ra5ssjMEk; Thu, 16 Oct 2025 16:09:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D740540420
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760630940;
	bh=vFYS0qPEPpbOYIJuiIds9jhXscDHWTKHGAz275dDtnI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cuyiqswTxraIhZ4SUUUhlFTDGBADjQrdrROBbxV1LGn5O8gfRxAZht+1Yzz29Sx1J
	 KQX7+ZU78VLdTxU2zxXrV93aswOhlIoNgpZZQ4GPsH2aIfBNqF2bRUNkfo5rSeX1tI
	 5F34YxzKebNimiFKfO1Jufc4mNs5sN32vcRRzJpRHFi4AMIjUMaZw4QUtcpPmT4CDP
	 oZSVrnPgmKCewSaqsSv9AsXPD4/uBrjauOX3l57GJKw/ot2waG++immeSL6jxqV/B3
	 KffE/0m+LJrK378UEEZXFKyARf0EgzKyax4w09XVETPe3kHUSfWjPgZO+tmknAGxAY
	 y/O1RCPmTWs7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D740540420;
	Thu, 16 Oct 2025 16:09:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A4CF961
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 16:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B82F40063
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 16:08:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcHJXTJV28r4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 16:08:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFF1240054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFF1240054
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFF1240054
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 16:08:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D9F376404A;
 Thu, 16 Oct 2025 16:08:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AEFFC4CEF1;
 Thu, 16 Oct 2025 16:08:54 +0000 (UTC)
Date: Thu, 16 Oct 2025 17:08:52 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, Guenter Roeck <linux@roeck-us.net>
Message-ID: <aPEYlAph8tID7pdh@horms.kernel.org>
References: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1760630935;
 bh=rtOobu5Sj6URXeJFQHEPI/LcvnF98Vvo3jMsGLFw7Ks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C3XXkATFhO5SOAHnGnmt8eM6n+IU9UCidNpwdgWJEenZXPHAHIL6/Y9ll9yObg4WD
 T1pmhh4oq/A4vdiOWjGttIzMf+Rk3xT8i5gmgKBjtIxGkvtUsCwheZ9RZBPXZrh5FW
 /ppwyyVyKZ4OoM1fG3nYPIukS1MMgGsn6vkIbhhpzWdU2RUktF24e3Guf/LenXF0FC
 hAej+ZwS5gxV4SD9aX86GrpnYZgQAmleIDL6uaMu4MeTcVGgU2w3FGgD38/qLF71gM
 ncks9ZZHYPJncjsBhyz2nJOyAbg3qJuh9KFNeUi7TnFaouZO2qWrNwjYKsJpBCiPB1
 xC0XRDeOM8Hfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=C3XXkATF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS
 when building LIBIE_FWLOG
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

On Thu, Oct 16, 2025 at 09:29:40AM +0200, Michal Swiatkowski wrote:
> LIBIE_FWLOG is unusable without DEBUG_FS. Mark it in Kconfig.
> 
> Fix build error on ixgbe when DEBUG_FS is not set. To not add another
> layer of #if IS_ENABLED(LIBIE_FWLOG) in ixgbe fwlog code define debugfs
> dentry even when DEBUG_FS isn't enabled. In this case the dummy
> functions of LIBIE_FWLOG will be used, so not initialized dentry isn't a
> problem.
> 
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2 [1]:
>  * add DEBUG_FS dependency in LIBIE_FWLOG
> 
> [1] https://lore.kernel.org/netdev/20251014141110.751104-1-michal.swiatkowski@linux.intel.com/

I lightly compile-tested this and overall it looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

