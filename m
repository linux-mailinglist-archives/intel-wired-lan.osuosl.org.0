Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH1sOGd23ml3EgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:16:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D533FCF32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:16:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7340384CA0;
	Tue, 14 Apr 2026 17:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUFG2qCWRSqy; Tue, 14 Apr 2026 17:16:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA7CF84CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776186980;
	bh=a34u5VYi+HH6ZgXfKa2GQcL1piGR6fblTlJ80ZzRtvM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PNS3nkhPgbQTog7MRbARNK8NNebUOc0Aiwfc6S2C1B3ycy34WU3kPpy+F1kl0GINw
	 8+CrSRe3e2Sjk/i8OpgGlFc7rykOL9/+2XvuPciF1+g2gYY87Fnjr4a086UEu4QEwG
	 kjs0ysO0+l+OgIOVX2ZtpvFGYCSmSxiYEehzTOwq6sVpA3VcuWe33gVme4jmQxXSYZ
	 vQlOJRz8GiVvq3VHVZ6K4zOlEOwHGdi3yiMx+f0MvBCsgudkVl8Ugw6Mxgryhqa78W
	 ZgbV9yXdA1UbVII5Xm812FpXLEXUwvkk6h1ITbFM+Uos6QjwesDlgovwmYD/PBNm06
	 6QhPGFsbs8vjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA7CF84CA3;
	Tue, 14 Apr 2026 17:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CCE02375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B29C742C2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id htuNfWii2ago for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 17:16:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122b; helo=mail-dl1-x122b.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08DE142C24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08DE142C24
Received: from mail-dl1-x122b.google.com (mail-dl1-x122b.google.com
 [IPv6:2607:f8b0:4864:20::122b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08DE142C24
 for <intel-wired-lan@osuosl.org>; Tue, 14 Apr 2026 17:16:16 +0000 (UTC)
Received: by mail-dl1-x122b.google.com with SMTP id
 a92af1059eb24-12732165d1eso16358331c88.1
 for <intel-wired-lan@osuosl.org>; Tue, 14 Apr 2026 10:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776186976; x=1776791776;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=a34u5VYi+HH6ZgXfKa2GQcL1piGR6fblTlJ80ZzRtvM=;
 b=BVPHGJbBInmoGcKrtopWeTHSj4kKBEqF5s4+IUmihCHlUBwetRsq7pyXDKEuAr1Ss7
 rN8wHoCmobn3a+l17pHiXD/N7r7j3xBmwRx7HRqoGJcQ0a2o4xlWoO2uJvcppmGSbdq1
 45cjOKNdXOaE3cZsFuZ4BmAUFoRE8bB4BhK6rRA5Bx6uczYwet+JbZVFuYm+So6HVufw
 lTM9R8TYyPz2c/n7AxAJmZQdJ5u6rskesrM3F9keBK8Uy/Z41CudC0JXTRWDK7J7fzwK
 tvmZyJsKe8w3+ffYq71FoR8QDyrucqmUo6mZoNFYCueeB4cnpUBnlVkynwuqOVK1GCZU
 P2gw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8WLmhj5xeWBR7baei6nq4TDmAcL3FednFmb+f5G6FOpZvH1UOSLTBPXVMXMKz8BHmHFaqRS2lgrtsVRQgjpaQ=@osuosl.org
X-Gm-Message-State: AOJu0YwowQIFW98qSuGYKzvT38JTp/DuCG/nxJ2GaQiJ2jvO3Q4QLJr9
 jji6SkPIz8QCy2/eqtdkhc0R4/+q2K481EMOEZ1MlJuqtFOym861eBkEiXWxY+cab4c=
X-Gm-Gg: AeBDievt2r8s+8ez0c6PTm0V1BlFRq+XnCbFSXQAHw+SrIdPfnLS/T+4Gd0SscxRFdf
 B5dvTqejTdKUDuUsc3YVNZnpUjz2EFsAMNs63XeIlhXVhAHCHDIMubcpno/KKAC0K/JJtXFSajy
 VMiFc1rVnYkq/zZanQm3fEXyS4rKt1h+o99Vs0B2QLWpZFdcjW6kCX3iYuGxqV8ui/N7+rnXPuO
 3dmfo2FAhu2CLhMn7rs5iqjW2U3LIYqNv28N28ixgnWfKEyA+jGPO6auJXdRvC8tMoRdjDPEdUO
 U/bIBSpTvHTynAAoXNSXk+pFMOnWYJoD3cb15Vj/EW2NCT35vQkrDnkG+qH7Fo9NTYWbpggK6Q4
 T0oxx5cxYMgbYHmQE99nCwt9qWk4oKcBBPR9eEG9XKEouzcKZlHdlMylDEo8JZKJ/7wA9eKI8fq
 YSOlFVhQfOhzRiNdx4HYuO3TXC
X-Received: by 2002:a05:7300:7313:b0:2d8:b2e1:20cf with SMTP id
 5a478bee46e88-2d8b2e122fbmr5869059eec.10.1776186975660; 
 Tue, 14 Apr 2026 10:16:15 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:ba4::23? ([2600:6c5c:6b00:ba4::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2d80acca4c5sm17167382eec.19.2026.04.14.10.16.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2026 10:16:15 -0700 (PDT)
Message-ID: <950488da-4776-44cf-8756-ecb717de5d38@gmail.com>
Date: Tue, 14 Apr 2026 13:16:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 intel-wired-lan@osuosl.org
Cc: stable@vger.kernel.org, Avigail Dahan <avigailx.dahan@intel.com>
References: <20260413000325.33379-1-tactii@gmail.com>
 <01cee873-23d7-43f5-96eb-29826d1c157c@linux.intel.com>
Content-Language: en-US
From: Matt Vollrath <tactii@gmail.com>
In-Reply-To: <01cee873-23d7-43f5-96eb-29826d1c157c@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776186976; x=1776791776; darn=osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=a34u5VYi+HH6ZgXfKa2GQcL1piGR6fblTlJ80ZzRtvM=;
 b=F7lnOdSOhRLj8z0qscdsC27XfGvr9von2DwaPC2EOzf/1lJgcPKTE/hjLiuRwPXLLD
 yRjGabCrPqHrynsyMuUQHvJK7DSyw8emzPiBT4OVqC02ReZRNxo1BQCEl9nPBkLfj4ab
 RO5Em6pxlbwC/duOP4wzMDgc2cawk1U0nQQaxfT1YJAqsaxehEvDsTGujoe/5nU/gkBA
 Pt6X/q368N3LU65+y74+WmjUAwyg0MEw+QL0VtwfqVb0XoSuQx2u3PRrbril1JOUS+v8
 hqKsIyaVKFKsvoE6OQTYr5PwMWwl+4OqtmiIVgHYdiLdakP3N46pwUa1A3V4dOOs9sCK
 B45A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=F7lnOdSO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] e1000e: Unroll PTP in
 probe error handling
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:dawid.osuchowski@linux.intel.com,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:avigailx.dahan@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B5D533FCF32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/14/26 04:55, Dawid Osuchowski wrote:
> Apologies but it seems I didn't explain fully where the changelog should go, same goes for the Cc: stable as it should be inserted into the commit msg as a tag, see example below.

Thanks Dawid, I had figured out the changelog after sending this by looking at other patches, but didn't see anyone else adding the Cc tag.
mv

