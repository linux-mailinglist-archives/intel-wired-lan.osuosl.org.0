Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A71ABA32977
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 16:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD5F5424C0;
	Wed, 12 Feb 2025 15:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UOpWqGQ4VTui; Wed, 12 Feb 2025 15:05:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5889424D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739372715;
	bh=uEgBbu7R39tGn44Uv+G5+df2/9K6EbmaHoqznv75zWU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wE8PiEsRU4TqcQ+JU7Hzkq1PkpmbkZPee1SKPaRwFS8FYKHZuIlFTT2zrh91IzhnA
	 1iGBaVe5HbFnKVySbkdRDw7MEMbwyJyR25YlJY7oM/AzBDFcitmLQ8c2bP2gt1AQdP
	 lj0t/OLP8ADeZchXHhW9drZ2IFHC7WxvuxS+Amsfh/jsYTAKJCJRbjROB0umkYpQk8
	 HiUeRmoEaZLwqxm2cy17+yDT61ugY9Xkc1s6k3gG0346Ml8Et5BstvtxRZUaJulk3S
	 vNQ1XNKUntLyRJJbphE7k8HpuzXfXiAbXtRQajJqB8HlgtSr/EMNvWo+BK91Ta7Xv2
	 WYoQSCXBOxCxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5889424D9;
	Wed, 12 Feb 2025 15:05:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 477501C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 353EC4130D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aNg3C4G3ffPV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 15:05:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E91441318
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E91441318
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E91441318
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:07 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-38dd011ff8bso4149247f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:05:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739372706; x=1739977506;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uEgBbu7R39tGn44Uv+G5+df2/9K6EbmaHoqznv75zWU=;
 b=vaTK4T5ZG5zTI8zisbd/P5/OqZioxBVOpLYK4OT1i+ZeEwpoPC3tz12gbsSR6y7qFC
 lWWLbWHUu/Ov+avrpvZ9PlZVevFguGNCW+KUfMaAgHOoTwIAjuEYzPiNjyhm4kNnPhAf
 aXyFvFWHIO1AJx81YFS3YgF1zqNzQLaq0MrpgvkkIZ1NTylQIFTwIwVbARosUmyKv4xh
 aLuS8qOCFCBQxwl/4N2rtaGpxvbwkBHKSB2yJ0h59Q20rP96AEgubqGUDPSGXXtskzpx
 T8mdCVxt4cnh5Fc/CTz0l+LUOeapdiJBM7zuV7jbyRWLoirLap9m5Mta0Pl9yfnb0mub
 Mjdg==
X-Gm-Message-State: AOJu0YzETOhkIFEibYRzifQp0SqcraKiy5RjyhGDffvJD20xVMrDbS4T
 D+jU50xXfiZ2DA/9Jmjh/HdRYgDlj5yYTZkfbd7m8Ma7sLrGohF/9iVqM4a7vbo=
X-Gm-Gg: ASbGnctTw6qhAnpy7TAPDnSO94+fdGL4M0hh1OtysAu/OgLHIbzokn36NRw+cqP4YDL
 CoaVCI+iJ5ABLV0xTW5pIFL4ZPEg8jZaIjtlPB4g8VJfaLM5z4iKQCs9a/sFT4Dvpe9XvIubfj/
 jdyq9ob+rrVHHNlgoGMxI3UfDE8hj5SO/NueF6BL5O5bnQifrf9NZvkZ5qFCaMl3oUJ5UkKxSN8
 WudkMkTNb8/j2+V9hfFqd/Gvw9wRQWQNgOuqc2UGTPpTTTjhmMA6AIEyvpGBeZatBBH2QV5RHgU
 wovrLDENQXwIriwLqrKyyLhTesKnJROMzeRzbh9TH0k3v+rwrwsX8vl/Gm9pHA==
X-Google-Smtp-Source: AGHT+IGzKbsKrCgNCVEhSwFx5eAnnx98CSh7rT9yENu6S1whVmV5on9d5MRdPkQtEuutZZiB8OvE6g==
X-Received: by 2002:a05:6000:1f88:b0:38d:ba81:b5c2 with SMTP id
 ffacd0b85a97d-38dea2f875dmr2961632f8f.47.1739372705508; 
 Wed, 12 Feb 2025 07:05:05 -0800 (PST)
Received: from jiri-mlt (194-212-255-194.customers.tmcz.cz. [194.212.255.194])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38dbdd7f039sm18033234f8f.59.2025.02.12.07.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 07:05:04 -0800 (PST)
Date: Wed, 12 Feb 2025 16:05:01 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, horms@kernel.org, 
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <73u3dz34jdnsgoujbjdokzh7tvvdubqmsngaa77a2feedbtulm@v5lnrqvaethe>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
 <20250212131413.91787-4-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212131413.91787-4-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1739372706; x=1739977506;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=uEgBbu7R39tGn44Uv+G5+df2/9K6EbmaHoqznv75zWU=;
 b=eWDxEUjR4EVUeOhJejBhvcDPQP/dOV13PJDQyJIPnDAFQG4hbwupizsE+e+/5UJCdu
 rrfPtQ3/gXyGPj7UTXQ4RfLxtHNPd0d4tDCNsB5ZiiIsIEco1Z+GkryJYSMOML/0C7ep
 +aItpODwETtUuU35im1aGr6O6fOStMgJca95SI7lwABPYhCgSNhAft7px2KN9SnJ2ifU
 9/vZuKg+yVYzXYJQZU4VvBbB/bxVgd7VhMJ2PMdNwxk/oTnQ3s+Rzzj9v6pYo3HTghOx
 bAWjrtCv/5mlj7mHLVVy3iPSWYm989ix3yDnNXbX1fOQjofNRa03RSXi2/qtaI7xyi/K
 Xmng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=eWDxEUjR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/14] ixgbe: add handler
 for devlink .info_get()
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

Wed, Feb 12, 2025 at 02:14:02PM +0100, jedrzej.jagielski@intel.com wrote:
>Provide devlink .info_get() callback implementation to allow the
>driver to report detailed version information. The following info
>is reported:
>
> "serial_number" -> The PCI DSN of the adapter
> "fw.bundle_id" -> Unique identifier for the combined flash image
> "fw.undi" -> Version of the Option ROM containing the UEFI driver
> "board.id" -> The PBA ID string

Do you have some board.serial_number by any chance? This could be handy
in some cases, for example if you have a board with multiple nic asics.

