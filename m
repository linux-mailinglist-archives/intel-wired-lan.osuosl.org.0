Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B09C368FD0E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 03:23:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2665340881;
	Thu,  9 Feb 2023 02:23:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2665340881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675909387;
	bh=hxthgw9MKuGJNO141ccTtfbZ1w7pvQAFDYJFKZjhT04=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I8OyaPCfW7JGUdW2rXnEgGW6FBiqjZDZD0KfJgIt+oRHdCbxbFvtIOhOh1vi0erAs
	 22EKGdW/tSdwi4JmmnSjGSOVwO/oa50BA+yYOa5JkBdogy51kgDS4+Std+R0jOw0J9
	 P7E2yddGFI0XpHgt5GjRhp2pnZGPKPFnp93kXLwjyrhmyFaBYjBViNdTakuwKuZbe4
	 iiWt0RvvTUHZKkM/9GLI2OdFDgl3UhK3LIQtjOaajtIh+PbXXkwAiOcaaSbcNAhsDB
	 b06Xe47Bpd1m+vQVJ/LWASf3Q0oSlX8rikk16YwFMTtYJPzbOHTiqc8t/UwvDz5224
	 W2PKZsMsnkwiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fbE79EqossS; Thu,  9 Feb 2023 02:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC93540877;
	Thu,  9 Feb 2023 02:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC93540877
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D94B1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22BD240877
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22BD240877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_vmdAmHT0K2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 02:23:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D61D2405AE
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D61D2405AE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:22:59 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id dr8so2308941ejc.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 18:22:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=leuP8yKTp3aOhzWpWEwkgHZjeuEA988zNE5XLgEB/so=;
 b=EI1XnuEGnvdk6R+LBgmDHvH2NLjoGoBoCn1DGBKFEjRiIOhMK02jbw6OLk/EYoOXpM
 4hLrm1gRADO2ZA+WJd7NvzKeQcOZD8PLvGkQfEWY406GkZIZ8e/xplPCkDQxt/jwVK7z
 +lwB0sxqWx8WTxu4WYFyfvbSqWu5zEGnq6sh7nuXFW0lGdKOHDMP1piS0po829pE22X+
 ebeZcIYr9Fvydw3/FTmp87NGyuGP7w66vCTbVn77Hx+FQiSWS8405GzYlRXruaZGeRZV
 IgA/2z8KR6P9B5NvnAKCIXl3K1jxDKz1kxOzkevW1mkSXuRuDKYusN9bq/IqX2qgeFWR
 d4sQ==
X-Gm-Message-State: AO0yUKXrwXVYNiWj6s7sPi17KwkqoWgbgI2of5G4iBIMnmgyoFaIad7Q
 SJvfO0n0j5oMfy1vkve3LDtfYBktiHtYdplhZGw=
X-Google-Smtp-Source: AK7set/4KZ2LcrSiwi/BxXZmB2rIF+nIQeFkZYqrqhk6Msqj4/lIOf9JfPU+15yabUHY0Mp2clYxFyOL0ldkEU+Ccs8=
X-Received: by 2002:a17:906:2ed1:b0:882:177f:34bb with SMTP id
 s17-20020a1709062ed100b00882177f34bbmr2067833eji.16.1675909377887; Wed, 08
 Feb 2023 18:22:57 -0800 (PST)
MIME-Version: 1.0
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-4-kerneljasonxing@gmail.com>
 <CAL+tcoD9nE-Ad7+XoshoQ8qp7C0H+McKX=F6xt2+UF1BeWXKbg@mail.gmail.com>
 <CAKgT0Uc7d5iomJnrvPdngt6u9ns7S1ismhH_C2R1YWarg04wWg@mail.gmail.com>
In-Reply-To: <CAKgT0Uc7d5iomJnrvPdngt6u9ns7S1ismhH_C2R1YWarg04wWg@mail.gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 9 Feb 2023 10:22:19 +0800
Message-ID: <CAL+tcoBEv6tiAES-JPF4er_bkQWuqZ1m0ouVc19EARCOcaDidQ@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=leuP8yKTp3aOhzWpWEwkgHZjeuEA988zNE5XLgEB/so=;
 b=STC9BSG74WRy2CJ0lOKy/cq0WnQPt0M1fWU6T3DIy4zcmrsWzaUSpLgckFebj07crB
 vRwGZagzqcxscD757/zI1xFocxXOV+2QhjoOtlnSB3E/A1Rl0H1b14kdHnOprxCjqSOu
 qDm2sx2F1dHKeRxzkYcbOS4rmifY2dfeNuoixFaFffEBmMgG+ROoSa77Rw4ny4Ok4P3q
 ltsfAmFjErMFYgqEtHhYPZvI3yf4H41KVbL/izEO4lETjN0nwW7NQTfT/y1VF1NdVFcl
 MCgfzn/Q7ITcX9AsP8NptN6O2WO0Z4FPOD5BKz1Ap4yFwMqz5kFvq3l9rDswTUqPCdsq
 FNnw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=STC9BSG7
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
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
Cc: hawk@kernel.org, daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 9, 2023 at 9:08 AM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Wed, Feb 8, 2023 at 4:47 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
> >
> > CC Alexander Duyck
> >
> > Hello Alexander, thanks for reviewing the other two patches of this
> > patchset last night. Would you mind reviewing the last one? :)
> >
> > Thanks,
> > Jason
>
> It looks like this patch isn't in the patch queue at:
> https://patchwork.kernel.org/project/netdevbpf/list/
>

I got it.

I have no clue on how patchwork works, I searched the current email,
see https://patchwork.kernel.org/project/netdevbpf/patch/20230204133535.99921-4-kerneljasonxing@gmail.com/.

> I believe you will need to resubmit it to get it accepted upstream.
>
> The patch itself looks fine. Feel free to add my reviewed by when you submit it.
>
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Anyway, I'm going to send a v2 version with your reviewed-by label.

Thank you, Alexander :)

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
