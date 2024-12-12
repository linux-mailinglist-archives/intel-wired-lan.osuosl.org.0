Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B8A9EE785
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 14:12:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB4241607;
	Thu, 12 Dec 2024 13:12:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fuo9OZo-vYUG; Thu, 12 Dec 2024 13:12:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0B8741609
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734009130;
	bh=cg1nYxP6XG2A44Y9yGhgtQIdlrwL6BM0kKg96k/uz4g=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nI6Wcp6YvwuiZ9RKBfJJDYbweYSyswYHpNkZJEG5lLfkKpZblHMZoqZX9a7ibOd3X
	 nIUyYvpI648h0HLOzvh77LfkKrH8n+nMNUKFg4EVLv59kycuc1SFRC3yS08qRAE2Al
	 rX+Dqyr+XjqSQqDKv2qOadUMvCuoR7YBMdbDAUYwO5NYJTZisB7rak/79qy8t/7hWI
	 X9oXWEfly6E6rw2KwjiyfbnYvLP0u9lc+pvtUH3vDEkglV6mWipdSuZDjRQBi9ZJXO
	 WU9rsPfMW4a77yPvRE0Vi7tEFmq8MgJIxeg8u5Ii42RaO4n0kGliNMvNO/V2j/SoVe
	 SThZHintjp6Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0B8741609;
	Thu, 12 Dec 2024 13:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A65B113C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 13:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F0CB84611
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zhtsfTFa1Bep for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 13:12:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77FAF84615
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77FAF84615
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77FAF84615
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 13:12:06 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-177-OX6KvTnnOCyaHxNVYKbYdw-1; Thu, 12 Dec 2024 08:12:02 -0500
X-MC-Unique: OX6KvTnnOCyaHxNVYKbYdw-1
X-Mimecast-MFC-AGG-ID: OX6KvTnnOCyaHxNVYKbYdw
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-71e17ba9729so167498a34.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 05:12:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734009122; x=1734613922;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cg1nYxP6XG2A44Y9yGhgtQIdlrwL6BM0kKg96k/uz4g=;
 b=cjN2mP0hNWoboHRpvYJ8x+XSRHSrRUFZ7yvKFplD2yJ5ZyqXNFxrj+3bhetY/Jynqi
 AWX9oRvuYCR+UyZsHqo9q2QbH/JEiT8sLVqMwHfmKFMhqCwQhPzJ1tLbUsnssun//dhO
 AiRj8jLFANxkbf4nz3V072yLeiLLW6D2DL84lm6vn9sI/diUdooDyfMcI/vwZFr8c43G
 x9J1LY6e0BymYHW/r4aisqZwrcmSrDDSblTO7X9rM5hTYJr0gQxrwlfDoa2n+5BEuGO+
 FHSis/gh69afCIQb4ciX6dc7X1aSI6Pl8DHdvFK4ec2unjf3T5m1/5tpyhUG4w5pt6Zl
 s4mA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbvYsPsewy/9y4pWTLfcRqUtqyC7+uHVIZIWQ16BBL5B0QZuAwHosBe3a55leU872HTelNyc6h4Lq11OpEm+U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9iSB6XTeDFB+P93274t9ExH3ETFK5wzXKIAUJUoYh1uBDFmHZ
 NJHXti+EFD0mMWluPj+YM+0QMKV5jY6tNx6CfkN+6AUpNwttGxRk7Lt0aIUF99iwEGUXIKNz2Um
 oBXRUjQl3igd6aj5UtK/3wNkuGZ8wAg2wcyjb1ee9P/jpxH5rYlhsz/Z1wNk951Mq+S1I5sJmtu
 cOHMCgwMYx8RCucVLJ4f1uhPr7O5G+EFatHK5/4sAqYQ==
X-Gm-Gg: ASbGnctD9RxzlX75HV9JD7ILMCx3noxM5/dKRckoazx6yokwkZP0Zh83KECFYVRE7zE
 LsezhMNQugBNjkwJTuzFnAOoROz4Ji6kGqz6+Pg==
X-Received: by 2002:a05:6870:7b46:b0:29f:de73:b4e3 with SMTP id
 586e51a60fabf-2a0128a2e5fmr1284614fac.0.1734009122001; 
 Thu, 12 Dec 2024 05:12:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2aoz+nmqiiFuP0zfvq8eSkrlXCTfYsTtSQ0bCvkAzA+SqW9fUzx/j08IR/MBPt9jjTuI1kyLvvaeqR0mCtR0=
X-Received: by 2002:a05:6870:7b46:b0:29f:de73:b4e3 with SMTP id
 586e51a60fabf-2a0128a2e5fmr1284607fac.0.1734009121717; Thu, 12 Dec 2024
 05:12:01 -0800 (PST)
MIME-Version: 1.0
References: <20241115194216.2718660-1-aleksandr.loktionov@intel.com>
 <SJ0PR11MB586584A7DD6C2BF831B358418F312@SJ0PR11MB5865.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB586584A7DD6C2BF831B358418F312@SJ0PR11MB5865.namprd11.prod.outlook.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 12 Dec 2024 14:11:50 +0100
Message-ID: <CADEbmW1otJrU3HgcJ2mx22r50Xjmcb15LxJ=h8R8Cs+L0QBGSg@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>, 
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>, 
 "Romanowski, Rafal" <rafal.romanowski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yNxNgCGrgen6x2GQQypP-_mKv9rSPEm0fa8V5AVeTtE_1734009122
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1734009125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cg1nYxP6XG2A44Y9yGhgtQIdlrwL6BM0kKg96k/uz4g=;
 b=M162+d9scuqvE/W6geF+/E5Q83aTeotaCzwb1VPHTAWtg0c1shcGr9Ox+3UBhzLjOXaWF3
 CkG9gId0PW8cPBF9CBzKPXWII3qiKijMN9z3VgvSgTy95H5SpjnPeoU7zEK0t5pg3sNOsZ
 a1Wg7JqruS9u286xlY4hyua/yTFwtZc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=M162+d9s
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add ability to
 reset VF for Tx and Rx MDD events
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

On Fri, Dec 6, 2024 at 4:41=E2=80=AFPM Romanowski, Rafal
<rafal.romanowski@intel.com> wrote:
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of A=
leksandr Loktionov <aleksandr.loktionov@intel.com>
> Sent: Friday, November 15, 2024 8:42 PM
> To: intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>; =
Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr <aleks=
andr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org <netdev@vger.kernel.org>; Sokolowski, Jan <jan=
.sokolowski@intel.com>; Connolly, Padraig J <padraig.j.connolly@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add ability to reset=
 VF for Tx and Rx MDD events
>
> Implement "mdd-auto-reset-vf" priv-flag to handle Tx and Rx MDD events fo=
r VFs.
> This flag is also used in other network adapters like ICE.
>
> Usage:
> - "on"  - The problematic VF will be automatically reset
>           if a malformed descriptor is detected.
> - "off" - The problematic VF will be disabled.
>
> In cases where a VF sends malformed packets classified as malicious, it c=
an
> cause the Tx queue to freeze, rendering it unusable for several minutes. =
When
> an MDD event occurs, this new implementation allows for a graceful VF res=
et to
> quickly restore operational state.
>
> Currently, VF queues are disabled if an MDD event occurs. This patch adds=
 the
> ability to reset the VF if a Tx or Rx MDD event occurs. It also includes =
MDD
> event logging throttling to avoid dmesg pollution and unifies the format =
of
> Tx and Rx MDD messages.
>
> Note: Standard message rate limiting functions like dev_info_ratelimited(=
)
> do not meet our requirements. Custom rate limiting is implemented,
> please see the code for details.
>
> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v4->v5 + documentation - 2nd clear_bit(__I40E_MDD_EVENT_PENDING) * rate l=
imit
> v3->v4 refactor two helper functions into one
> v2->v3 fix compilation issue
> v1->v2 fix compilation issue
> ---
>  .../device_drivers/ethernet/intel/i40e.rst    |  12 ++
>  drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 107 +++++++++++++++---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
>  7 files changed, 123 insertions(+), 17 deletions(-)
>
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/i40e.=
rst b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
> index 4fbaa1a..53d9d58 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/i40e.rst
> @@ -299,6 +299,18 @@ Use ethtool to view and set link-down-on-close, as f=
ollows::
>
>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Hi Tony,

Did your tools miss this "Tested-by" from Rafal? Maybe because of the
weird quoting in Rafal's email?
I see you refreshed dev-queue yesterday, but the Tested-by is not there.

Michal

