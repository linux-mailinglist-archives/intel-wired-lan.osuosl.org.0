Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8580FA3AA9B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 22:15:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2A8081152;
	Tue, 18 Feb 2025 21:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tm-J3eleXE8a; Tue, 18 Feb 2025 21:15:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55CE380F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739913316;
	bh=Us2UVu9HM9Mx+8iReZZJAVot8T6L4nmtvkAiGdFIRaM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QjujCj181lcmoohjZyxqNTkRrSSnP3+TETIv8CmGJpLs+G9Db8zjoir6wkZkFPfjw
	 niafTjrWH6ldpwuBaykp5w/JP6C0lfGucYn9claRdIu3YhKuFv79r0/HxEwGPyC2jr
	 NPnnuThhfR+wymhXtOmBUhB/MBD4+oftEjpE+rkiSOb5D10vnsjQ6bF8kcZOH04VGj
	 MeLb/L3n7A5+c17cGZLTa6hpOUg/HPZZKGJN3WChbeS/IQnAkXcO8SCrxbOBWYqH6R
	 OjWs89mwuucBcYXocrwgDjFkdFC6QmlA0liccETwR52bELs1CxTRAcN5X3qFimYJQF
	 WAFKgUtEaSASg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55CE380F8B;
	Tue, 18 Feb 2025 21:15:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54E43968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 440FF40BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:15:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GodHFAAl7tw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 21:15:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82f; helo=mail-qt1-x82f.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5BD5140BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BD5140BBC
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BD5140BBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:15:13 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id
 d75a77b69052e-47208e35f9cso3085511cf.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:15:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739913312; x=1740518112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Us2UVu9HM9Mx+8iReZZJAVot8T6L4nmtvkAiGdFIRaM=;
 b=qhhGNZbyS8HTJ196wbIo87dboWfaprgzTMmZBV+DAcik77iRlu4Qx7zWFn9AeuyWTz
 c5DmdtfnEiqWiGXNhO4ywZb5gKXokzZTXixLduiAD1zbFcAXUhG5LWKOmJU8z+qMlh0P
 0mEsazz4hQarU45+gPURGEpXy+3bQK3K6sf5P3Te9BQUmaHsqPne8jg/9FOh7BIbV7Ag
 cUWbBHVAWag3bNE36vwjY8MzrM7yUK8wLXEjunRhKsSOf3K+oZFflJ5bL4qiUgzfpGcS
 Kkre25nnFtx6WHVEAh8h1p+sY65L/nYiWZjL55IkMETwUTEhJgn3Y4g4F4qptI1ApE3f
 hx5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5rGfaJtBQl5gWg/pBhGYiQDPSLh3BeRKBNtuzMn02wHGffbgMgxK69pQm299bl/oSb+1ecDyplN1DfwKj9Io=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzQdfLjR2ThD+0Le59nZCEcGUZCqOYZnktXd0UmjW4K84foLweS
 VLRdz56vOP+F+e8UlGmZTWGMQSmccZhDu1QhkeCGCItNAaQ1vpsET8KSTcCHvto=
X-Gm-Gg: ASbGnctXKR/zOsrZAHuzUa3FKPFMKJ4mX5j/HNFftQqy9fY6uQu4rVBFZiUir2AVhTv
 JnEdbsYXiSTc/KaH58u81IL41hSYw17Kl7ZeqqBZyEg/o9FXJ/QekKfJsg71j5100s75wy65rV9
 VzwuKpXqaeMH7S93POcV/N3fJ1BHZVGL9HlVQp2sbTSmfmXVnHwJTFvDHQLi28AdlFIB1Rqjhcq
 z8ZMLdmdOoXQvQBJzDFoIDBl7Cx+6lYtyqOFWnvQZoXV9lkB4Y/6cuBphs8LNCNcevwxefoCmYf
 Bd5IoI4ckZhgoJDUdO7VlPQlSo8rKTRH0iCItQz/NBvciJeDlfARBA==
X-Google-Smtp-Source: AGHT+IHOjtcR2kp1/8dJDlxIxwE1X8aBGduY/U9Z7QNBND7kEtKVNOGKmFyezcAeXr9jBbtkp5VC8w==
X-Received: by 2002:a05:622a:1190:b0:471:ffbc:9d6 with SMTP id
 d75a77b69052e-472082d78d8mr14975431cf.48.1739913311237; 
 Tue, 18 Feb 2025 13:15:11 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-47207919e27sm3988831cf.4.2025.02.18.13.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 13:15:10 -0800 (PST)
Date: Tue, 18 Feb 2025 16:15:08 -0500
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z7T4XHtw9-EN-ifm@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-3-4cb502049ac2@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-igb_irq-v2-3-4cb502049ac2@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739913312; x=1740518112; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Us2UVu9HM9Mx+8iReZZJAVot8T6L4nmtvkAiGdFIRaM=;
 b=Rt6RcvioUL9bcnOFdTCxHHdkOpFJmxLwoXDnsIZKn4eBf5fqj47oNYk+Ibq+CSK79E
 tF1v0fEB5/5GpzUEHSgvLcruwSAx/ap2B7z/SDFYTkWWxelpfoBXH1gpooQcMMhfPC/m
 BOCO3M625Q7N0ydVcMDx3aUb3CWO0ww8DzCmU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Rt6Rcvio
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: Add support for
 persistent NAPI config
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

On Mon, Feb 17, 2025 at 12:31:23PM +0100, Kurt Kanzenbach wrote:
> Use netif_napi_add_config() to assign persistent per-NAPI config.
> 
> This is useful for preserving NAPI settings when changing queue counts or
> for user space programs using SO_INCOMING_NAPI_ID.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Thanks for adding this.

Reviewed-by: Joe Damato <jdamato@fastly.com>
