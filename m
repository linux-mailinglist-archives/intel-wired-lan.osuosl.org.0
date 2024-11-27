Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2309DAAE0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2024 16:34:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 566F942B89;
	Wed, 27 Nov 2024 15:34:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8L1G9UZDNjXT; Wed, 27 Nov 2024 15:34:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 757AE42B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732721652;
	bh=ehLBCZMvqNM9RzwEXeNAalHuQSt29OG4XkC9vSde//s=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fYUG8QyeEpzZCJvlMD4fBJH4G0/wXyQWzZyLQUw17bEF6oTZuzpWHIiePbZAlxgem
	 UXplYQpH4tGExt3QRxOM2th58li/1c04xy31Z+pthi7TXvtEwrR+3Lpx6jAnaqjN5X
	 Mjk+ZEAu/Rxbdeb8ObikFhw+pT2z1m1EcwK0ARrehg/9Rm7vT3EGfOZYDFQtohlJIy
	 6ZpCjYce14+s2dwFepXxI/Vp6TiPmuyqgxvJCeVmOa3Bf/CA8BBGnwmBalWUlZ4NDH
	 vFpgVMLBelP30AryUYuvqgumF2Jcoqv4aHkOWRCc+N1keyaOn1VxFAHKZ4jWEBaNJ/
	 THSXwRSyw4EJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 757AE42B8B;
	Wed, 27 Nov 2024 15:34:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EE94DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 15:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F2D042B4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 15:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDsbjBhlQFTw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2024 15:34:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f31; helo=mail-qv1-xf31.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72CF042B52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72CF042B52
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72CF042B52
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 15:34:09 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id
 6a1803df08f44-6d40ae72d35so48943026d6.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 07:34:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732721648; x=1733326448;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ehLBCZMvqNM9RzwEXeNAalHuQSt29OG4XkC9vSde//s=;
 b=A5RAjEe1kvTpbwdq/f/JEFWSVOiLi8+Z59y7R4+O5LuxfEau/H4AsB0/ywj6fzpOTo
 3Hf6JaRWuTNCizaz8aISLxpEI0ZwOWjUdsGVbSTUYc2jR2u8FDFL15IlQE7xYOdMnyfZ
 x7yXa9lY71qWWty8S5AgeMIlepRjyBuOdBQ26e0GLiNK5GRZ3Jhs/Ca/q2Ba/0rK2duQ
 Aq2I2QuG8GpyNWHR1AGmYnygbjpeqyjCT0t7ImbDxU9q7rEBdvfj2730uy1xBTfh5bNp
 HYyI/QsCRp2XIUZZ3EKo2Qso9U8T0Tt5msLSRGp/sH0WaCwLxMBD3+jGesNmxT/+eiEb
 vBTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/mlteEv4Kj7IvRk8wt4yK+KXlrnHP2fM/mZydvYOE+230sY6Oztn7ZKpglQi7iDk/NZtb1p9RcnFQpY/4/uk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxwkdiJCb0h+/gQjhsYF7rjMDWDou89bl3FyKmfSe0Ic+FhNEF1
 oT2vznsv5iScqV87U0/Wo23dbmNfn4UAsxKJl5E/dcL/ryjLWvXL
X-Gm-Gg: ASbGnct4mjvf8xG7CjKHsqhiaADv8doLzUIHWbDMsAdp26lmNWoAm/UiZxtWqeqYQ+w
 EVXxx92+2f5Ksi3PoceNZj8bf3o4BQRSGZKrtezjTzDB7VQc/jetAI4wHqeekhNNFEW8i70qyyS
 FM9wiL5h9SttjrTUBKYRlTEcI+r4eWhoD2nazvoTW8fkRypQFoLK4YvHcWUVHwVfA2KXCIVjbVm
 B1QcSx38oauTzaJ4WYDCgW+jRJI3/CgNXxUhpq5o6sF+KT4vyTm+h8HAsMeRPkKwYgzm9MkS4ua
 F/vkVo7bQcn+TQ9uoCo8uA==
X-Google-Smtp-Source: AGHT+IEEzlTT2avstp8W9weA2W6Cs8uymkdP10+Ia6GaqZlwbET2wqgTzBzk7LE2on4otsU0hU9wgA==
X-Received: by 2002:a05:6214:2529:b0:6d4:1ea3:9829 with SMTP id
 6a1803df08f44-6d864d8e653mr49258146d6.30.1732721648123; 
 Wed, 27 Nov 2024 07:34:08 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d451b49c3csm67001366d6.99.2024.11.27.07.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2024 07:34:07 -0800 (PST)
Date: Wed, 27 Nov 2024 10:34:06 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Willem de Bruijn <willemb@google.com>
Message-ID: <67473beedaa9a_38483294f5@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241126035849.6441-5-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-5-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732721648; x=1733326448; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ehLBCZMvqNM9RzwEXeNAalHuQSt29OG4XkC9vSde//s=;
 b=Z2U9ZZzBc3TSiBGKpEQS38ECIACZGOkyRvHOJ+kDkmaB6fUlYNMNZsWPS9CWeThntV
 +gmvan7XVt22UW6wc1wJuAZWOal5yInipeYkMqre1rjTZneUgQ3yZXngZuH+jp/RwOjA
 4PxFkhLxcOXADJvrcIRCqh9UCU9XyFFDmsiXvZYHEz09q9zLd77iTIV5wOrbRStFuM6H
 3DDIRi6t1wN8qRkDhYFV2hUYTx/Lz3WdtR2MAW4b8faOBRHiqKWx0Ry+cz3jMwImQwDn
 7naa3Wzr0ECQvsrUKb1jA1VOYJd/8m0qyVZCQ5dPj32fWhKNY33I/WB7OsSENZW8ASGT
 6Nqg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Z2U9ZZzB
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 04/10] idpf: negotiate PTP
 capabilities and get PTP clock
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

Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Tested-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>

> ---
> v1 -> v2: change the size of access fields in ptp struct

also removes dependency on CONFIG_PCIE_PTM

