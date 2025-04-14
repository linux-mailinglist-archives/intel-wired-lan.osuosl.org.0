Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C97A88BAF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 20:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79B2560B24;
	Mon, 14 Apr 2025 18:46:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ic-EK8wh3wj0; Mon, 14 Apr 2025 18:46:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 576E060B79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744656394;
	bh=YpSfHpLk4g82/Efaxxr4vcOeA7lwSVP0ZoulsVdeGLY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rBASfiNR+i1LKjxs0sWusEbXqMQ6suinjPEwh45Aer6GxM1SqrtLgP+h985LKAMkW
	 5Wgv09uQ6mMSD6zMJFfPEJcvkOokE6LpfI4FjNUeDhzXVVxeJ7x3R/X3jO6hjvwLuH
	 6U6o8mMi+Y5SaF6X6wq/FCLf7C+vc/InFQMwa3KQtK72P+pWz7PiWUqt/0YM/6vEC9
	 mryAUQIy41zfMgTYCWOQ0B1SCkwf/u/OnAxbv/fBwA5d7pgKxbdzZooXOw9W+doGYM
	 4ts9si0g/B02vuggLJCgoaQ6ZLGwD0lqersOfgj+lbI02G5v+t5pXaz//WaE4q59MM
	 ha5xuBqCqvliA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 576E060B79;
	Mon, 14 Apr 2025 18:46:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A986205
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 18:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3704B813A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 18:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zvv9lrcdCAdP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 18:44:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=briannorris@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D49A80A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D49A80A47
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D49A80A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 18:44:29 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-b07d607dc83so1349965a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 11:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744656269; x=1745261069;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YpSfHpLk4g82/Efaxxr4vcOeA7lwSVP0ZoulsVdeGLY=;
 b=lt0zJrfc4KQl/b3BBtBGq39zOKqNrtgG7vctv+gKuilAz6dcqYV0RX7+C9ZNXna/ma
 bK5ur+bllRAjnFKva6DLAW/uoX+SMseHzA5CcSUvG/vdozeriRYcye78MWUa1AfxQ9rx
 9MWeCAAS0pEndoRvuhvAWJQ/lxphKIBVz18MbgvFQfBk882iCkSzNGnPEaxpnpy5nhoo
 UtPLTuRZcAilcFIZ4mRfSyfMSLlJjfm+AjIOwClXBGxV5J8//v2izjfrzGjpmCR8h2sq
 ZAACgh+AtUjTCBMfPElM8I6ec4Hn30CdwDrZUn9/o6cmN/KdhzUF2bXxOS9MBKlil8DR
 PGYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWE8GUYTXWPKFF/WzwXIZ5SejSVOklK0Yu5cGPfBZVl2HhRGykoEd9TxeNkkDKtgzRhCsmzYIGf1gnjd8NSViM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzEoOy92vhk1B/EEDXcb3FdFLOeFy4HseTsrYqv2UWqXDGc7H8+
 bCmbUj/xbSiBj3ir3tc8//AhFLcGW1ULONMscpImea2NgQFgaGpgPXfe3dRTbA==
X-Gm-Gg: ASbGncuo8j66A2eCkNNDg//kgpztHYlkGm31Y7gwWV4d7oIj+MIo+o/pPOr+lMXkdLY
 Scq+POeGEoU2yBLI9j99F/qLlr5QAa51bo/CZ/0x5MGUGq0H7AegK/kbAPrpfaHN3yt/O2ubEO9
 IVbxCZ31dw7Iq/vlpdk3Z6lljyEwdG3+IebOFvPG3GL1BQD9Gnxv7MYTeF7ntwHfnHFDmrY3lYf
 +OSQvbK3T/PawQyz9uKKCfd8h3zAIOocZCoNOfgExSURZ0eunD9aEHSYaWZsxERgPaJau2UCkG4
 DAIVmDv7cADE+Kaohp/YKufAXkHZLU2r+3rFEBRwXDOuoW6o85Oty1vsijkc/U7aRWRCG1m8Yss
 7MA==
X-Google-Smtp-Source: AGHT+IHRnGevNVFCEzzLtuARDY+GV3b1ySMboNdXjtt9nCxP859MMeYdEqvd7RpkkuyGR22MEOT6ZQ==
X-Received: by 2002:a17:90b:2752:b0:301:1bce:c255 with SMTP id
 98e67ed59e1d1-308237ba788mr18304386a91.27.1744656268888; 
 Mon, 14 Apr 2025 11:44:28 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:cfd0:cb73:1c0:728a])
 by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-306df082327sm11386410a91.15.2025.04.14.11.44.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Apr 2025 11:44:27 -0700 (PDT)
Date: Mon, 14 Apr 2025 11:44:24 -0700
From: Brian Norris <briannorris@chromium.org>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas.weissschuh@linutronix.de>
Cc: Jeff Johnson <jjohnson@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 ath11k@lists.infradead.org, ath12k@lists.infradead.org,
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org
Message-ID: <Z_1XiNY2ujreEo69@google.com>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
X-Mailman-Approved-At: Mon, 14 Apr 2025 18:46:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1744656269; x=1745261069; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=YpSfHpLk4g82/Efaxxr4vcOeA7lwSVP0ZoulsVdeGLY=;
 b=lV0Xwgi0KZN/8hDnVahCNWGUrhUf/YB/JZjFAvYkbgIXEiyqR6REhLurscxcPd34W+
 2lcxIznra9v15EGjD8gGVncAJ1dYZLJn4bu+Q2OVU16uevJf/ft0f78aBfywm66JhmTh
 JmH5gklRJLVJVKi2Bs/iQnuc5QFfwQ053akCQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=lV0Xwgi0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: Don't use %pK
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

On Mon, Apr 14, 2025 at 10:26:01AM +0200, Thomas Weißschuh wrote:
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk().

Is this really true? Documentation/admin-guide/sysctl/kernel.rst still
has a section on kptr_restrict which talks about dmesg, CAP_SYSLOG, and
%pK, which sounds like it's intended. But I'm not highly familiar with
this space, so maybe I'm misreading something.

(I do see that commit a48849e2358e ("printk: clarify the documentation
for plain pointer printing") updated
Documentation/core-api/printk-formats.rst.)

In any case, even if the advice has changed, it seems (again, to an
outsider) a bit much to say it was "never" meant to be used through
printk().

Brian
