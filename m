Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8634B52BFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 10:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E88E41F4A;
	Thu, 11 Sep 2025 08:39:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcgkxCqTl3Td; Thu, 11 Sep 2025 08:39:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C838B41F5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757579988;
	bh=Ltet1DEkl+6/W/mA/mh0wSx+0fdNt6OLAsr0v/vtsws=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=syDiuhOh2m1pKxIj1AxmOd5MZ/Mu+oul5ydu5KuqZ8QJ57SFZ+E5DjRjl5y97QLhP
	 Bks4kgifDx+QnoQmERO7mvNRjWFA5Xwg4l0VlXaUqng9c4hLuAt8DZS7U2OZXsL9oJ
	 0A6jrX3LSg2W3e87GXAQkqBVFVScoW8b07mLZPVRprwJUw3l9UyVYVnAOVZxIktjbJ
	 D53aES0DiGrxcWsUm8Fct+D3rW2fE3tJ9A4zFPMNBYHsQiYTZgY4FQvMoGuCwGwOvH
	 XI8BkDrJOZhRKyqEfo2sGFnh5uqwupMehpXfUZLbe9uh1ylES4IpD7l3nbTFAJhb2X
	 rqZcj7y/e0aJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C838B41F5F;
	Thu, 11 Sep 2025 08:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 443C9234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29C344166D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:39:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ySMF7npvmZR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 08:39:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1D60C41669
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D60C41669
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D60C41669
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:39:45 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-231-SucRDI_APHSrcCVU_OxvKQ-1; Thu, 11 Sep 2025 04:39:41 -0400
X-MC-Unique: SucRDI_APHSrcCVU_OxvKQ-1
X-Mimecast-MFC-AGG-ID: SucRDI_APHSrcCVU_OxvKQ_1757579980
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3df3e935ec8so247458f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 01:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757579980; x=1758184780;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ltet1DEkl+6/W/mA/mh0wSx+0fdNt6OLAsr0v/vtsws=;
 b=wNW5HbjfsllQuyhUcdfOHqJ6z6+hUG2DlGu5b/wkcvI77NVgWjbHnvBwi7th1GpJuN
 UFZ8pGYNIisQuOijJOR1/wBjaotWkaGqnbyt/iZTC/7keweKb1529jcEGsqIDHKkYxsO
 AITQgcKhK+UC0HBVVIKLDVXIEgpYuRI2zrgW0cVYNWwlpia3PyeOJLSzT4T6hhF5hZcf
 VcELb+KyLIeVmGlRGMMmkQyun/gZ8u3Q3X36ZF13UPmK6+6reWpDDh2RzCl9OEvSvdf0
 xNMjK80jJ53WVdkAIq1YbG5Qmgoh8JXs/53YavH7le3yeE1PYr2axJpNMvxixbC+4kuN
 qOwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1tjTzmqKHM+yn3DIURqPEwUsZSXd+GxLBsD0sMp2leZ6gXZXBBnRJQqywxfTt9Cq8ePIO1/njf3pqTKBQM3M=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw96YQbpGJZMfYrmKZC2BMNrAUq4p/SuP6ucsZqCuhJ7084LAKo
 VxWVtawRvk57pG9SG/+B0tIY2bBeX7TS4FnyORx8Q+v/YM/2gdErI63AMntOSv0oPZ+/HILy8QC
 hj0SnigaVdL/7RX/l8l/zDUAZoSh55JqfUlM6YJj/yFgnBHiLgpy/MAXYrcFeM3xlnmR0row=
X-Gm-Gg: ASbGnctlSbBc+JfavhYt1gYk1U6AEPXOCepu34/iLbRxvKy1vOYx3Lhgk1UCPRWsg7t
 9XazQcg9M9wi0/9zlS+k7VP18bniNzLh1Fy0vSza18s7UwTV1pFkIyRIZfI23CvldxoF441JtNG
 QhQWtsLo3r7nV3zy1UGQAVMlXE584uHrZTjYApyVPDCDVTfC0x6rrz6d++sbUCx4aZP6/TNL+fd
 cK8eKgFEMDOd4RpSfU8qFDhI5QMlv+4SQC9r95cteZAtWSdQ9xAGJFaF2b2/iGrvYyvhkxSsGQh
 d1nTb3FpsPRS29C+Gh/Y6Wc3mgAssevJtvWoVHTyjPk=
X-Received: by 2002:a05:6000:1ace:b0:3e7:610b:85f6 with SMTP id
 ffacd0b85a97d-3e7610b8754mr1087221f8f.39.1757579980047; 
 Thu, 11 Sep 2025 01:39:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKiL19RoayeKzPbOlZN/BIKP343mirP4w1v2R1K9mBR+ow5apdnT52wvVT2ZVXAZtbgB7Mhw==
X-Received: by 2002:a05:6000:1ace:b0:3e7:610b:85f6 with SMTP id
 ffacd0b85a97d-3e7610b8754mr1087200f8f.39.1757579979640; 
 Thu, 11 Sep 2025 01:39:39 -0700 (PDT)
Received: from [192.168.0.115] ([216.128.11.130])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3e760776badsm1589169f8f.5.2025.09.11.01.39.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Sep 2025 01:39:38 -0700 (PDT)
Message-ID: <8f52c5b8-bd8a-44b8-812c-4f30d50f63ff@redhat.com>
Date: Thu, 11 Sep 2025 10:39:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
Cc: Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
References: <20250910221111.1527502-1-vadim.fedorenko@linux.dev>
 <20250910221111.1527502-2-vadim.fedorenko@linux.dev>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250910221111.1527502-2-vadim.fedorenko@linux.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xEH48IbazCen-CCP9q_nk7AyjqeMtltUndcsdwGA7oc_1757579980
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757579984;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ltet1DEkl+6/W/mA/mh0wSx+0fdNt6OLAsr0v/vtsws=;
 b=Bwj1x0yhbVnBwRSBW+cBTW6UjQYZVudCL0G88dvkKev7LVgzzVL3n60rcrjImwiiXFNsk9
 60hh1G8d+S5WuKrE2AjsGLh38M7kjrV1+yPt0kl1AmtouIcZRUxGzRs3p2cPF5GTRFSJsV
 JZo4MHcnHnPZqEC9Vp8/oN6BnIuaacs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Bwj1x0yh
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] ethtool: add FEC bins
 histogramm report
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

On 9/11/25 12:11 AM, Vadim Fedorenko wrote:
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool.
> 
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

Not really a review, but this is apparently causing self tests failures:

https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/292661/5-stats-py/stdout

and ynl build errors:

https://netdev.bots.linux.dev/static/nipa/1001130/ynl/stderr

/P

