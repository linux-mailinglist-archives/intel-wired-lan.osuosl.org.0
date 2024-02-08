Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B451184E6A9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 18:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5488D42456;
	Thu,  8 Feb 2024 17:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXePe_a2c760; Thu,  8 Feb 2024 17:26:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B560B41EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707413167;
	bh=tJYRqYmM7AWojZ+rKn0b3WiKJHY9lxz4bCvXg4I/eoE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MgJ5Wxzaue2/kCCU79kMu5qK0banTlmjxFAy5tCitGzWITxdFbAt+8wvGQaznzOPI
	 E4OWoi7mk9srZwL+7013RU7uZbjmmxi03lxjmEC2HUddAsK/kJuJ+DfAOybi6cUrEy
	 Dbul37Gy93xhcuEMFCHDSnafl8mIqkls2be0IPtkosl9R3RAz1DMaNun8wrlmu88/c
	 svV2560g1uZYL71zn7YlseGpWGEjRR1RS5TW7Ub30Sbi4Td8zOAgvJBxvNEx6mBl3V
	 7VfpFwrG/VT+VImrFRmoYhNGW5YL4iNxMH4CEh4r6O00pWFhzZhbOoSsR0k5bkARio
	 89CJR+PDa3QQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B560B41EEF;
	Thu,  8 Feb 2024 17:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71E7F1BF95D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D3BC42896
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F82gTbyRd30b for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 17:26:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b35; helo=mail-yb1-xb35.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 495AF42656
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 495AF42656
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 495AF42656
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:26:02 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id
 3f1490d57ef6-dc747137b15so22401276.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Feb 2024 09:26:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707413161; x=1708017961;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tJYRqYmM7AWojZ+rKn0b3WiKJHY9lxz4bCvXg4I/eoE=;
 b=dOUrIcWOQtIOus79lRlNxBktKWh1DkEzDBhRMuvAdR229hqGmBk3JOu6KQJ8prmCpG
 NBe7ml7J9ICvNco99MonDJgIagTRtD5YZA4GjBz827h2DErc+15QKhyLx+kiwWuO9Lwk
 drqcycN/g9/RqwMCkdnLtZTmBuDmLPUq4zf0FcZQ7DxUeoSAVqIiezFVUQwFlA02X9LY
 dC+Umwc2P89VXdGwQtJVHoz2rcOATAmmMIobvOnzfDg91K7RHf0Dpjdns7y31CXVb0qV
 OeVhyZEg56s3D0PbAhYRY8yvVPpY8FpL+gbk/5ePrXH43706yvKdIk0p0+xIH5SeLXsa
 4E8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVi9N4YK3NmU3UMpXdRNnelJzdfmtA1GWXFq2+akBi6HAEDRFmstSew3TMC9lIhpE8E0AGFwvu0/BlRoDEjk0sVQ43moSBo8mESCj2lHM/cHA==
X-Gm-Message-State: AOJu0YwdGiuqU2F0I5kAGLiM4Z7qxb83r0S3WZpf99+oiersBRfPRxxd
 yzKEeo2g+NtcbEsfEXW/x3kRj/dRM6X2zGXe+ByXEr/ogar9zsQl+dgmVwUk2JmNN4jKMY9ndik
 XXu9+qY1jvpkrRkBktYpmY+JNc9I=
X-Google-Smtp-Source: AGHT+IFUpgAjnbbhJ0a2EyzjE0MnSXCWfE3AZrCjWY4YH12c8dhmGJslXeSXdhXf10XmGnjFjQsCiWU8Om/W5Aj/ivc=
X-Received: by 2002:a25:664d:0:b0:dc6:4b37:e95 with SMTP id
 z13-20020a25664d000000b00dc64b370e95mr132179ybm.26.1707413161095; Thu, 08 Feb
 2024 09:26:01 -0800 (PST)
MIME-Version: 1.0
References: <20240131134621.1017530-1-hayatake396@gmail.com>
 <20240131131258.47c05b7e@kernel.org>
 <CADFiAc+y_SXGtVqZkLoiWw-YBArMovMkuWw3X596QDwEtdBJ2g@mail.gmail.com>
 <CADFiAcK_XjLNjzZuF+OZDWjZA4tFB8VgeYXVJHR8+N3XryGxwA@mail.gmail.com>
 <20240208072351.3a806dda@kernel.org>
In-Reply-To: <20240208072351.3a806dda@kernel.org>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Fri, 9 Feb 2024 02:25:50 +0900
Message-ID: <CADFiAc+i9i29SL0PM8gzmDG6o=ARS6fSrTPKNyqh9RLmWWB78A@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707413161; x=1708017961; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tJYRqYmM7AWojZ+rKn0b3WiKJHY9lxz4bCvXg4I/eoE=;
 b=R7MRBbJnmMXoUZkZ+6yEuawryf3qO5QihBvwW254OA7e25TaFKF6usS0nxLMY7XjSf
 2dms5ssdTsGZUgHcvLTQjglg8Cx/pEBcDc6Yan+W5BeKu3I4JA7MKWKXtQ8g5VFH3tP6
 OIo+Eye3mzsHKVkZlEml93d2pnQrj+aW8vUGNKTZ9HHS8hNfyiuC/uXYtlsouyDIahIP
 klxM6k43ZTPqd3drNqdLS5HTPIm1zQ0CMA06VezWa/4gealzyikK4dXa3WAX/V359j5P
 Gf9av3DcJWSmLTRQm2z/yCxz0wHELm1yadaa06wiD+XhI2NN0jVGIxubh78u/vjZtOcu
 NAFw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=R7MRBbJn
Subject: Re: [Intel-wired-lan] [PATCH net-next v6] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub-san

Thank you for your reply.

> We're expecting a v7 with the patch split into two.

I see, I had not informed you that we have released v7. My apologies.
The split patch for v7 has already been submitted. Could you please
check this link?
https://patchwork.kernel.org/project/netdevbpf/patch/20240201033310.1028154=
-1-hayatake396@gmail.com/
https://patchwork.kernel.org/project/netdevbpf/patch/20240201033310.1028154=
-2-hayatake396@gmail.com/


2024=E5=B9=B42=E6=9C=889=E6=97=A5(=E9=87=91) 0:23 Jakub Kicinski <kuba@kern=
el.org>:

>
> On Thu, 8 Feb 2024 16:34:49 +0900 Takeru Hayasaka wrote:
> > Hello Jakub-san, and all reviewers and maintainers,
> >
> > It has been a week since I last received any feedback on this patch. I
> > apologize for the inconvenience during this busy period, but I would
> > greatly appreciate it if you could continue the review.
>
> We're expecting a v7 with the patch split into two.
