Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2DBA98739
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 12:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A9D640F48;
	Wed, 23 Apr 2025 10:24:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhpwOWMkb_dB; Wed, 23 Apr 2025 10:24:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C89B40E1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745403850;
	bh=TPRw+axkJFcjhHDTuYr2A1761jrA3Q28pCtIdm4HXwk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i5PO+ToASY43fFvufc9VY/AAgswC8kq0WGBWXzCenwW4ifTYioQFOZFjJva2lwKJv
	 rLdXKhRRUWFBrdMeo5FoRzkNQZY3YS9BkA9pKanwVmK8Aq6ciT3MdYDm1wS+oo20LS
	 Q7cPb+niQn6xIGIhZLXRkhaeA/uDfjrhStrLpOn1KOqfk/29aAhbS6kA7lXrx+WKGO
	 Pc+98jBchYKKHVWWz3koVWf493pg+3BHVFiqzPx1gERHw1MVEtH1w+Qfp4cjjxBYlZ
	 rmh99XgSJJn3CPU3OrE+mQVfzZfDC1L62LRFolVFAqoiZtPm40HKg4doC0Oq+eu4z9
	 vMpF+0gRp0ReQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C89B40E1F;
	Wed, 23 Apr 2025 10:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 0134C1BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 10:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id DB4EA82AC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 10:24:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id 1IDRVcFaSMhs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 10:24:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 332B882A8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 332B882A8F
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 332B882A8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 10:24:08 +0000 (UTC)
Date: Wed, 23 Apr 2025 12:24:04 +0200
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250423122301-64a5773d-a3cf-4e21-9f24-04294ca4eeb0@linutronix.de>
References: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
 <4918f292-46b5-491f-a8da-5d42432bde56@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4918f292-46b5-491f-a8da-5d42432bde56@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1745403844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TPRw+axkJFcjhHDTuYr2A1761jrA3Q28pCtIdm4HXwk=;
 b=Y+jRbLBQs2+InjYCQ4Z++bBUG9MV0g0zxRFd9ZCp46H+PaxA0ZsGIAfZlY9v2eFUBbhQx8
 i8a0r6+d0gujrN9/7tp1XBSZ2AULSIoISAPdqqEZMK58YyykGkl9W/JnCvj2fVvYFpLEzW
 ekQQF0XzSxjmvAzaq4BsIgcXz+QTBdzZtpCsFReLqx4PY317oSKFCFGLDvBE5B0XDH9HY6
 2msUwNiqyC9YZ7ITP2h9QwDcwzR3b+s7qpbA0JMBTphusnnmwOeKFXiir9Pj5XPqPDzHIm
 JprZJnuH9fnQ192Lv0sOz3FUAJxMNsQ7MYO2gB3T3RXRoj3euNAwOr8GhWn9Vg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1745403844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TPRw+axkJFcjhHDTuYr2A1761jrA3Q28pCtIdm4HXwk=;
 b=BU3+R4iMWPq9T0tBiL9gRULUwfm5F3Eyioai5no9cNVZphwrC76xgcxzWrjZpm2dIf3hg/
 cbDQYxlg2XG2vqBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Y+jRbLBQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=BU3+R4iM
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] net: Don't use %pK
 through printk
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

On Thu, Apr 17, 2025 at 03:39:13PM +0200, Dawid Osuchowski wrote:
> On 2025-04-17 3:24 PM, Thomas Weißschuh wrote:
> > acquire sleeping looks in atomic contexts.
> 
> typo? s/sleeping looks/sleeping locks/
> 
> present in patch descriptions as well

Thanks for noticing. I fixed it up in my template now.
