Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D69A590FC96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 08:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B3BD6158D;
	Thu, 20 Jun 2024 06:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iGRVb01EQhGV; Thu, 20 Jun 2024 06:14:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A3A561589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718864066;
	bh=oiTn9eBnc2xaUqrsy4JPHqQwAM2LMekPATvkB/1t99U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ATfce0XMme36rjbRnsteK6PGW2BzPFMoksi3tpIjVDwq3TKMKJc6revdLofA6rfm+
	 D7KuioZmBczATaDt+2B2bCsy3/cE9+0lt0U35qB7n0bNAQOFDEHd5E/+CoPf58ZTDK
	 eGNkqk6p2NmCg/hcDzBftSB8yTBHvQ08HhN9k+UqGSUV8O9QCMxkACb3wSjdixxrk3
	 HQ3inxeYP+/B7kq+CDGHQgJCGrN0Pos33JE/pBE2PFEcLksHyMN2jwanKwRCF+8aKQ
	 U8XKJSE4B7/XS3bau9wG3vgRn6MiuxRmauH8A/rW1b2c5Dew1E0fuT/aP/BK7EZudM
	 TlPrjZAumfZ0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A3A561589;
	Thu, 20 Jun 2024 06:14:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BEFF1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 788A44347A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iGEFJ64NZrGF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 06:14:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8022440327
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8022440327
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8022440327
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:14:23 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-75-8oD_9H2GNp2IIx4J3_sZAg-1; Thu, 20 Jun 2024 02:14:20 -0400
X-MC-Unique: 8oD_9H2GNp2IIx4J3_sZAg-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-421759c3556so8113935e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 23:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718864059; x=1719468859;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oiTn9eBnc2xaUqrsy4JPHqQwAM2LMekPATvkB/1t99U=;
 b=O+3hu1wOw8X3uhDHZ1LY3ptxM4ehjB/VM4z0fz6LDtsYvx6i0P6+3ikwhgDNBy3Nb7
 VxlxiN47kNarmpjXExAot5C2mmw62XVJP+nZZsZEwGDjcQirgL6gx1ob8o9g/rSoIdA/
 HRLrFu2mV9YrfZaDVlSm4Owro4G3hisPIiy7ZB7HVfMCcd8JVLtmXzYiSt5Zm7fbz9gh
 XMH6xiwvHAimAAYlRi1SSZnh9zZwem4gu/7GoKBUzOKRpOfiPDHIFX2mqqpdXo9+9U0l
 6pMUIT1uxcWkc3UZ/xRXjQnAjdfEw6kn6a1EAM3dhYCrXk0GQ4vuvEvG6bedQ+mLEa4c
 L+bA==
X-Gm-Message-State: AOJu0Yzcph677RLXxoTNw1SDpB8NX5feaV/X0pSSx3LIWsSmzxREQOL9
 qlhCvJZ4HJQU6ZzG6NHnIZg0yyKxbo7ERGdu6kZZDQrMCCvwlGwW/AIHvULPclpcdAqdun/FBia
 HCT2FQv9ZXxungphCjDaQpnc2hqjnSBEuDFYDYfeQJAkNgxtxRzm2zxjjS5wPN7tOOEbGVRoBj8
 i1Ftl+fAtpBh14ZKZskg2zCkb6ShrdOzSAey90LN+7Ew==
X-Received: by 2002:a05:600c:458e:b0:421:347a:f0a6 with SMTP id
 5b1f17b1804b1-4246f56d293mr69412405e9.3.1718864059439; 
 Wed, 19 Jun 2024 23:14:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrEIvCnPMZaJwLe3hkoFCWNMEj76Qf3eeg2phFe3gxqIMqjUEOM1rEKZDIA0PorTtHFwQnwb5aZj1dyjKKBn8=
X-Received: by 2002:a05:600c:458e:b0:421:347a:f0a6 with SMTP id
 5b1f17b1804b1-4246f56d293mr69412205e9.3.1718864058794; Wed, 19 Jun 2024
 23:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240618131208.6971-1-sergey.temerkhanov@intel.com>
 <20240618131208.6971-4-sergey.temerkhanov@intel.com>
In-Reply-To: <20240618131208.6971-4-sergey.temerkhanov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 20 Jun 2024 08:14:07 +0200
Message-ID: <CADEbmW327YjOjkbb5p8KmyL=sXJbD-MaVBS5XT1uHCSg2ZNBLw@mail.gmail.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718864062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oiTn9eBnc2xaUqrsy4JPHqQwAM2LMekPATvkB/1t99U=;
 b=EZwmi56H9nIA0DMz7mGl1tLu28EHDlhS3y4IKBmup9KQEtFh1JtTEwo/GUJxZGEeYcH19X
 6M2dEwvtUskkMYWC9N20FmKbtj959mTsWnfbHkW9/P04hUkw6X8WzaY6N79jALjldfypAN
 xf7+0PYG0C+pg6SNzX8SLJmai6HitpU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EZwmi56H
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next v1 3/4] ice: Use
 ice_adapter for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 3:59=E2=80=AFPM Sergey Temerkhanov
<sergey.temerkhanov@intel.com> wrote:
> - Use struct ice_adapter to hold shared PTP data and control PTP
> related actions instead of auxbus. This allows significant code
> simplification and faster access to the container fields used in
> the PTP support code.
>
> - Move the PTP port list to the ice_adapter container to simplify
> the code and avoid race conditions which could occur due to the
> synchronous nature of the initialization/access and
> certain memory saving can be achieved by moving PTP data into
> the ice_adapter itself.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
[...]
>  /**
>   * struct ice_adapter - PCI adapter resources shared across PFs
>   * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
>   *                        register of the PTP clock.
>   * @refcount: Reference count. struct ice_pf objects hold the references=
.
> + * @ctrl_pf: Control PF of the adapter
>   */
>  struct ice_adapter {
>         /* For access to the GLTSYN_TIME register */
>         spinlock_t ptp_gltsyn_time_lock;
> -
>         refcount_t refcount;
> +
> +       struct ice_pf *ctrl_pf;
> +       struct ice_port_list ports;
>  };

A minor nitpick about grouping of the members in this structure:
"refcount" is special. It tracks the lifetime of the ice_adapter
structure itself and it is accessed only from ice_adapter.c. The other
members are the useful payload. So I would suggest keeping "refcount"
as either the last or the first struct member.

Michal

