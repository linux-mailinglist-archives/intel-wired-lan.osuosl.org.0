Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC74859068
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 16:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F75383BC6;
	Sat, 17 Feb 2024 15:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8hFP_NhbGGlk; Sat, 17 Feb 2024 15:13:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6915F83B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708182791;
	bh=PCzL8cQ1Oz/TzqI8bKRQZTeFIZ0LlV7vandSPZ+b4bM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Lrp2bihd3t2CvN6KACtx61IDQO+0YD6aZf1xvK2q4gv/4PBZmA8aPwYRFrlj0JG+
	 THKT0jzrlxzA6RwG+VVUSsyDI84n14YulhYFoJLIsQnOGSL6eA5K2hWiN/nlHlI46f
	 yLzwfnj/f39TgO6dFqSsiRLGRJKDVTcegUj5jQTsxglFwr0+xGS5Lc2gCo/zf+QD0Z
	 mE6G24eU9sGGOq4RBWK/o+ArrqcYNEHaIo0YxrJDA2kY5itKcpM6+po3p5WBnyg4fH
	 nM0hOxwWaeCiVj0LknfsSaXV+N1M/bH6h4iRblC2LOxOsaiPF/kNvSdQOGKlMosugF
	 LSqSHu+8+cC/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6915F83B8F;
	Sat, 17 Feb 2024 15:13:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61BDC1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C51D40191
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1HOWkMROAbW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 15:13:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112e; helo=mail-yw1-x112e.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 514E84012E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 514E84012E
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 514E84012E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 15:13:07 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-5fc05784c60so2293137b3.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 07:13:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708182786; x=1708787586;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PCzL8cQ1Oz/TzqI8bKRQZTeFIZ0LlV7vandSPZ+b4bM=;
 b=Zrr4CYXgSmtptPTZIsHMRUNTbCN7AmdCiATJ1BW4TESoQNEU6JtKQvglZNjLXvy74+
 ht7AsR0Z+Fk8l37PxYF1t5/VCuJsLSrJEfE05gb1vkJTEQn50eRD0+f9MG1k/GE6K38t
 rfWd6nwBoZTMyOVE++59L9WHJaqf4M6+dq5Zr93ublL2g2qXEexzjTTqghd7BY/RRDdK
 fbUOop3kTMiwrPVg0oIm8IHemr0dR174l/hdC7zwNoLgvJ2UZPdihnRjlAlCk0XD2V4h
 8KH6v9ltqkQOGnoKrvgb7PN+1QiJsMTx4OUeOnocoPhP+CntCRKfLWQtqmaZLMzfit7v
 lFuw==
X-Gm-Message-State: AOJu0YwyeYAjvhSiWT9r607H5vCVf3vLVdwlaw5nP6vqs/PWlSuzOH7J
 tOXtRZuAFu2xXWniJrT0zOpVv0yTdvE+ovx8uVkSQXzFdL71AtKfzPonfei2
X-Google-Smtp-Source: AGHT+IHU5W/xNUnn4Wqb72g6/BW+eD7uiLfbQIDqOeKi9bfKXwdp+/WkAu5B+KlphKdGx0eE3EcClQ==
X-Received: by 2002:a05:690c:a90:b0:607:f89d:b6af with SMTP id
 ci16-20020a05690c0a9000b00607f89db6afmr4092314ywb.4.1708182786510; 
 Sat, 17 Feb 2024 07:13:06 -0800 (PST)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 b13-20020a0dd90d000000b0060480a0e282sm815144ywe.60.2024.02.17.07.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Feb 2024 07:13:06 -0800 (PST)
Date: Sat, 17 Feb 2024 07:13:03 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <ZdDM_6TdvYIESKX_@hoboy.vegasvil.org>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240217010455.58258-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708182786; x=1708787586; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PCzL8cQ1Oz/TzqI8bKRQZTeFIZ0LlV7vandSPZ+b4bM=;
 b=JR/KzXMyXM30iMYyU/eUthxey7t8BSLPKdnhnXxnNWgZshhB+KVaMs64X/OM7XXLun
 cp/J9Mi/pQSVnEstYyRjK/KxOBsNv9ZBaU55Oa8X89RaQidPd94TioTf6OHs2RiMkRBe
 UXNB18kLFWrzN7Is9dKRZMwESnzlvts8+uFAxkMTKYIjwS0bXudaPrv02WWd8q4uSPDq
 h/uNvARPiUJfUlz0XbKxAtuBczToqBAXcP8St68PrfrJqy3I6drwHspRrgLEtnS3XrEt
 AXt3QlPQ1x8AYPz5w5nvxXWad9/HH4BhLpVWdJedzveAtW5UyIWhTeLRchVze1EOqPcq
 +urw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=JR/KzXMy
Subject: Re: [Intel-wired-lan] [iwl-net v1 0/2] igc/igb: Fix missing time
 sync events
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com, sasha.neftin@intel.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


FYI, this cover letter is missing netdev, lkml on CC.

Thanks,
Richard
