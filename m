Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EED7AB9255
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 00:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BD8D611E0;
	Thu, 15 May 2025 22:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fW895UpEfslJ; Thu, 15 May 2025 22:43:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C1A2611DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747349010;
	bh=XaMLZYYSkXEElFDIyZkF1bOxINyZfDKxXfSZoEJkwnI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e7XF0D0BCTo0PZYjC4zrz7JBXOiFXcpZe2BS8I5zUCYElQrHt4DmqJeukFHgpu/dL
	 IpnpJk3KlB8kaugQdWrolZMtZb/PTHzqDp7QM2yO2UgU4G8UAfTzsS+4qpyDUNkagK
	 9H1NOottCiKx7OSkd/vw6os3/+CdGKwjbKwpIQN98ZrxP9nIszvfNCBHMJ0mLjZyIo
	 3mehJTUqlnmfjArr8B8Qgev1ro+bdHTcDvscpBX1KlIkXrOcV7R0vwy9L0ob2SpomI
	 7DksY5jx59mx3/XZVfconHI6aKf9t8d4K9Ptyrn4rGVE9iA8bJPnsOEsm06Y8Q3gtw
	 ON0rKVIIf8+MQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C1A2611DA;
	Thu, 15 May 2025 22:43:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CAEE1AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12A42611EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9vjaEGHkVYPi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 22:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 702FD611DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 702FD611DA
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 702FD611DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 22:43:28 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-740b3a18e26so1662946b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 15:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747349008; x=1747953808;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XaMLZYYSkXEElFDIyZkF1bOxINyZfDKxXfSZoEJkwnI=;
 b=DmZY9e9fO4Im5kcVPa7x7C5of8/7NSP7ClgxgCstDvjBCWwvwuI0U6/XOC/2MHFhbP
 JoVemZVN2Tr9W3viSYFEkFNrEnEQPaeYMVD3hUYdGtFLDgJNR6Bio6fuP9DpRCsB6RCt
 G+qkJd/XfYsDdiok7S4Tk3UCQNPTCqIOWE8LsltHWoap/sYXEzXh//WKGFaTKJR+Gq/z
 QX6PlWcJzs9hlyc7OwguYqp8/g82yYehEcoQN2fPgo4Pn0YyNuDCMTHjpw64tvoqJb7z
 TZjITwCpFop6g1xDObbG+UfAaD+K9Ej97BbVhpESk3ZsQof5pdazYWnAF9LF+5d3rKbW
 dHDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWswTCQz/IEimHjesqjAaG+Pe787BlSLgRRPK/MeaCtpiqlnL/tGTGLQoGv64nWOIcaHkbAiQIZ+sf7+38ZQrI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy/oY6aANHLhm7rfSgNPDglLp9Tu3AovAqdhv1N2RpZMlsBVsKF
 D3TNIdPlKtGDDi5SLjkhWh5HJ4D8hE/KXXxBp1FnFPvpMjhLe0YmmyzNZMYKAJ9dDFY=
X-Gm-Gg: ASbGncvW42XcgP6/qCuYoIlV5NuvhPoT9+E6uoh5t4G+GBTob3I1c5q4NNQw3HL+heX
 FMH+wBvpVkv8/Rz5lXGWwDKgIbnxkhdL+L/gsp3jx7MzNjISrTqSd4KFqQ6CwTPzNEakFZgCJAL
 oWps8SSnlkDbfsQEyhxxQa/dBXVw6gearaQY7JylaLNpJobLrQFmAG79QzsMgg1bj9R/OKgvDN6
 fEZKo8gkIDNmzIbWKnEeisYlvc4n7E378a/o6UYE96wtZ1hMKh5HxBrNot7cwvkGlOPfK3XFXWI
 ijHHtsjB1PA2xcblbU4mIDb7UgqoFx3iDrGudu5uzCwjZRzzFvoySdh9gL5J
X-Google-Smtp-Source: AGHT+IFsjlad/fVowsBxAXBdcK0wIxdL3PSQuWQ3zgVhlWFTcAm7/XTsYHYk9L2yGj6UqC8Q/wKYKA==
X-Received: by 2002:a17:90b:2587:b0:2ff:502e:62d4 with SMTP id
 98e67ed59e1d1-30e7d5d9185mr1165499a91.32.1747349007629; 
 Thu, 15 May 2025 15:43:27 -0700 (PDT)
Received: from [127.0.0.1] ([104.28.205.247]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-30e7d4aa8a5sm333422a91.26.2025.05.15.15.43.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 May 2025 15:43:27 -0700 (PDT)
Message-ID: <1f726c87-c39e-4818-bc92-295ec1acf106@cloudflare.com>
Date: Thu, 15 May 2025 15:43:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, netdev@vger.kernel.org, kernel-team@cloudflare.com
References: <20250513105529.241745-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
In-Reply-To: <20250513105529.241745-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1747349008; x=1747953808;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XaMLZYYSkXEElFDIyZkF1bOxINyZfDKxXfSZoEJkwnI=;
 b=aMcs6kPI5fKMLQiWrOrMMXLrDsDMXiwibx33D+XQLMH3T/z6aRGmGIg3gzOoPMVdb+
 t3pPOobUF6+onRbR2uXXCRMOfYReLkxuSbslcRbgZ566fG4m7YuIbOugeJdPEPiPdq1a
 L0+XfEAks7K2sIId1IJJXGMDRyulE9m7b4o2vfEbQ6ERvuL2+mKAuho0iTUdmKKAdrOJ
 V74eObALveEgJk1zf9Ofn+sZ+GX4eU4wEgemedhtTEWjSdG8LZCd2hmDAfp4JBmV7DF+
 kvs2leZyTQFG27Pq/ILKYQ+lhKBOlISfhaiuflrLageELsIAiopAduF/NFRA8AhUcnLw
 Z8MA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=aMcs6kPI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 0/3] Fix XDP loading on
 machines with many CPUs
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

On 5/13/25 3:55 AM, Michal Kubiak wrote:
> Hi,
> 
> Some of our customers have reported a crash problem when trying to load
> the XDP program on machines with a large number of CPU cores. After
> extensive debugging, it became clear that the root cause of the problem
> lies in the Tx scheduler implementation, which does not seem to be able
> to handle the creation of a large number of Tx queues (even though this
> number does not exceed the number of available queues reported by the
> FW).
> This series addresses this problem.

This new v3 series passes all of our tests. Thanks Michal (and Intel) 
for the work on the patch, and thanks to the hardware team here at 
Cloudflare for testing!

For the series:

Tested-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>


