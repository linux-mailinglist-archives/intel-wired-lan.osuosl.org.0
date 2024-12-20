Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB49FB358
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 17:53:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95738606C2;
	Mon, 23 Dec 2024 16:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bpsbCE8aceSq; Mon, 23 Dec 2024 16:53:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3B16606DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734972784;
	bh=rl2GUGW1SKIB73yuGvAyVPoBfBy5XbBiVj4hV5yN+VI=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OeMAg2ZblSY0h5Y+HPCpgr6GKGfh73ob8tm7DBTiuxvFGKIKEDX7valH/55qwl9rN
	 QP2J7u0OQJKt1VHRXsCuZpMvYerC1Vcm/+i1HSIeNi7vxALZGjoqct4dwmd2fpvYv0
	 SIWb5HgO/IipdBF6SvxORVJBM6VO/ILHb1ci882ucbbeB4ollx9tGjKWFRJ4H08vIA
	 Z5UuKs968d3537yrXtVf13eGIrsPKvqedX9YAN4vHiSleD9Exi/3H7cSpMWfMQ2Fuu
	 gNhk4IUZjuWSQwragtlLwKcNwd8OpkyFIcyw6Ha8aF+1pQc94qbPJOSevYKLv7Pg/G
	 ShDjNQZRdeNjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3B16606DA;
	Mon, 23 Dec 2024 16:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BA957730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F17740048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:27:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kMMbgTSs2FIp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 17:27:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=srinivas.kandagatla@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 437E641107
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 437E641107
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 437E641107
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:27:40 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-3862d16b4f5so1519570f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 09:27:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734715658; x=1735320458;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rl2GUGW1SKIB73yuGvAyVPoBfBy5XbBiVj4hV5yN+VI=;
 b=LR4H4nfLSfz0zCRxfWxcIb5msJkQ+GRw73P7P2L2LvRJIpPkXZ7bZEHSmalwQQ1ke1
 +f2l5xXwD8IlBIxCRhePfDAp8qla2/FQKtSgVyXXGJ1GTt32Raic3/TacDR3nhq6MoFR
 RNQoNT9XpDTZqKdWjA3n5C22kS726K5+JBDVQFK/AlBKOfp8g13cqOmaKFcdnfyBoPoJ
 Kfze89tqGqtRlIduHdmy7k6Mw/746MB8pPeX1AWiYkDC9Xb/Ktk2LCfhJ3fGCFJ46SAO
 VCB6adKc0HsOuVA0cX98O1gytm+myHKHKuH8T1XjxxQBYU7lN/oOm1teEoqF9RQDoUFb
 S4jw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUSIvflbERLCIo3801sV5GyMjpbSwuWe09h9pgQqEuYUD4PUCoSyjFz2W54fsaSV+smaj0zgxFhw/HIB/SJ1n0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxa+w8e2vnOpj9BpICEF3ARkrtPx5h2DotRJgQRSy80+SQgiIFB
 32nZc3eOy2AiZomiyzfo8HCOr96kmRFeGzNUj8GrIZ/OozXeZcfH6q+iLvk3tqE=
X-Gm-Gg: ASbGncvudntC5Oa38VPq9ygCJGFC1QIBjofEyZtx+hnNBwQ8xdpRhDyM8PjCHYu/Kfw
 ykuRKViqg616q4As6i/4c6hkqqkHeajGIdcgZMcXw3DO26Li5lLKTxfAK8WrPHBFRzgHda7NQHE
 jgnnn7XjQstdp6U6NI0ZW4t72f/JcQt1JsnI36JSzFjR1o4skVLcufzxdDgfJUEP4nADBdbVGGs
 Rl9pmNNT4ZAceKfBKuOK6ckcIxDXT14yv3wD/NlFbiBTr+LC1bRetBIc7ZEPcyA/5zYb8He7PU=
X-Google-Smtp-Source: AGHT+IHQofl14bIpVpiQqz6qAEwAjKsEmWVjRCOjis6wH9jKfvKMjWLHCbYlsDgmYPDOjR7ci+Y7xw==
X-Received: by 2002:a5d:47c3:0:b0:388:cacf:24b0 with SMTP id
 ffacd0b85a97d-38a1a1f7253mr6745803f8f.2.1734715658179; 
 Fri, 20 Dec 2024 09:27:38 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c89e357sm4642915f8f.72.2024.12.20.09.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2024 09:27:37 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: linux-gpio@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>
Cc: kernel-janitors@vger.kernel.org, audit@vger.kernel.org, 
 linux-mtd@lists.infradead.org, Zhihao Cheng <chengzhihao1@huawei.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-usb@vger.kernel.org, linux-mm@kvack.org, 
 maple-tree@lists.infradead.org, alsa-devel@alsa-project.org, 
 Sanyog Kale <sanyog.r.kale@intel.com>, 
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, dccp@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, Jan Kara <jack@suse.cz>, 
 drbd-dev@lists.linbit.com, linux-sound@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
 nvdimm@lists.linux.dev, linux-leds@vger.kernel.org, 
 Nicholas Piggin <npiggin@gmail.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>, 
 Naveen N Rao <naveen@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
 linuxppc-dev@lists.ozlabs.org, tipc-discussion@lists.sourceforge.net, 
 Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 linux-trace-kernel@vger.kernel.org, Neil Brown <neilb@suse.de>, 
 Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, 
 Tom Talpey <tom@talpey.com>, linux-nfs@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240930112121.95324-1-Julia.Lawall@inria.fr>
References: <20240930112121.95324-1-Julia.Lawall@inria.fr>
Message-Id: <173471565665.227782.7244101246430956449.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 17:27:36 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Mailman-Approved-At: Mon, 23 Dec 2024 16:53:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1734715658; x=1735320458; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rl2GUGW1SKIB73yuGvAyVPoBfBy5XbBiVj4hV5yN+VI=;
 b=lgQiAHQNTVuczgkLoND3j8nApcUeWGO6YLkUil0HMHavh8f7GG0zw8uYbgFBybaQvq
 IHuwUQp4C7QIY7nAEJ/tdGG4uxGuPCuiB9j/9glECEzLBLoAa/O5lhOC9EDQCplMzt49
 ABVhZFi8YbV2wEQ/gIJB35JRkRrePQOuExspRXv8qf+TV1MymhrBk55JpY9CtbgA40QX
 f1M9KYxUtr8JB93Ig6QJ72S+NJD8dsixl6sFyoW16SPO0sTQj4j3EX6HFQLCobMGydqv
 Ji2V8uOXY8b/KIFuJr/WaBNvK6U2++DBwVQ/XhAjyfsmZdZqMWtb/P5tgYUyQD9oLEIy
 uVjg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=lgQiAHQN
Subject: Re: [Intel-wired-lan] (subset) [PATCH 00/35] Reorganize kerneldoc
 parameter names
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


On Mon, 30 Sep 2024 13:20:46 +0200, Julia Lawall wrote:
> Reorganize kerneldoc parameter names to match the parameter
> order in the function header.
> 
> The misordered cases were identified using the following
> Coccinelle semantic patch:
> 
> // <smpl>
> @initialize:ocaml@
> @@
> 
> [...]

Applied, thanks!

[31/35] slimbus: messaging: Reorganize kerneldoc parameter names
        commit: 52d3d7f7a77ee9afc6a846b415790e13e1434847

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

