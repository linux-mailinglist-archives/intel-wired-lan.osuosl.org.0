Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 239E12AEC27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 09:40:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD8298587E;
	Wed, 11 Nov 2020 08:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVRs_A00RHYR; Wed, 11 Nov 2020 08:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2F41857F8;
	Wed, 11 Nov 2020 08:40:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26E261BF34F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 08:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0F7452042E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 08:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sl9UW0WjPnOJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 08:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1834E20406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 08:40:15 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id m143so1348699oig.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 00:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=44+l5aH+9tVUZ2uSZHD5ETua+qWC6tG/was2zpKBcAY=;
 b=CZlYOvDwdBXLugtOnEGkc0r2Mw2vFrAkImfrL4Ftc+F1q83YQTUDMH+hIPrdRP7CUX
 ozpwUxv9zojM3yIfQBN15Uc0nK6cvkOu8Alb5uzDlIsexTtzyra3OqPOsGZvPuLzP3E/
 ix7AmpctBTQ74/YPCzoqaeN28JRYcdpqHhUGtSXaH+puCBvSAJAr+GowyThQWrgfWUc1
 7ovr1CyEvFGyHKs+zFwkriR8bGIStvkg1oREyrEcE6QIA5+JWmtK2oD4noA2xEqKovtL
 d56QDA/3XMxVHtyR7Slx0+/rUwz9B8oYD1LhFgWQ/G1U2AN40s2hr9tjP0l6s7WetSwx
 w1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=44+l5aH+9tVUZ2uSZHD5ETua+qWC6tG/was2zpKBcAY=;
 b=A37dk9VFthZzQTMnKgTRivFP9TVBig2tWxgAARIPojOOwhPAgKNWQts6vONnNc/39v
 q3eADIr39WXbYCyF+iHtFxs+Hdq3/fYo2yvGo/QSzJ43S1GyRK+UpIoxMXJeExyFlZRk
 VD56wXDnqg0Aw6e38YrLREQVcEaEzsIofNRwFTpLZIsjqB12n93O6ixKX/+KouJZH60P
 dK+GAS8UUHAvbZFADcoe4v/F6S6M3vrkMPRGa+PojRLSfq3wu4EeDQe3SQg2YibVNYSZ
 ZipbkkAn8Pi9bLG8By02nkbwpCRFdIoNI08YTymNhaqFn6YJFmWeuGnk6h5BTDplEvIz
 jbZw==
X-Gm-Message-State: AOAM530hLUx52CqyzxRucy9xk5mwBEGD+peQVVTim5agRIw8/WjMHwkG
 QlyL/btwEoKrEjSHvZagkK8=
X-Google-Smtp-Source: ABdhPJxQmRJobqIm7fJPGQtqA72GX/qgCiD0urPbX7FCQozly0HJeS+eH9G0IclPEqi49ZJfzKZPaQ==
X-Received: by 2002:aca:eb06:: with SMTP id j6mr1417623oih.144.1605084014346; 
 Wed, 11 Nov 2020 00:40:14 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id h8sm380926otm.72.2020.11.11.00.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Nov 2020 00:40:13 -0800 (PST)
Date: Wed, 11 Nov 2020 00:40:06 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com, kuba@kernel.org, 
 john.fastabend@gmail.com
Message-ID: <5faba36671508_bb26020850@john-XPS-13-9370.notmuch>
In-Reply-To: <1605006094-31097-5-git-send-email-magnus.karlsson@gmail.com>
References: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
 <1605006094-31097-5-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 4/5] xsk: introduce
 batched Tx descriptor interfaces
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Introduce batched descriptor interfaces in the xsk core code for the
> Tx path to be used in the driver to write a code path with higher
> performance. This interface will be used by the i40e driver in the
> next patch. Though other drivers would likely benefit from this new
> interface too.
> 
> Note that batching is only implemented for the common case when
> there is only one socket bound to the same device and queue id. When
> this is not the case, we fall back to the old non-batched version of
> the function.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---

Acked-by: John Fastabend <john.fastabend@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
