Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A19857F0D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:14:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3983541C16;
	Fri, 16 Feb 2024 14:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fw-cPlUrtIxe; Fri, 16 Feb 2024 14:14:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 414CD41C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708092858;
	bh=/DxwTOf5kx7rr7gaBgtPBS5c57nxY8Bp64eyQ45LJhg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gATy52CGwv3ulOUMcUiiKwFFokWt3Bhp19cWffgabdtLZn2iYNxf5rltNeyjTUPaQ
	 2f6/xyOycUWe3WdSTZW0h4OAMF26XEYOyEMx5g3vLUF8/kWUIYNdbOiFZG4aL4hKQ7
	 b/eFqOAGbYyQZy+lnUl5NhanbtcrRLPFRuIbauRjiCtKQulKisXzheWdPsgjSTkQM6
	 SbAYKQS258v92AgW+H80Z4f7vH1m5M10WG69hD2NtDvaU9MTPVxAIS7Yp4iqcjXoBY
	 NzbIARcmyJIsVvm32b/kDN6xPCX+W/w7b3xzWm9cTkYKNYXxAA/Dt46QXveJBMTGvg
	 OV3XGkVB3NvYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 414CD41C01;
	Fri, 16 Feb 2024 14:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 019EA1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAAB883EFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZOgQZcLPLCJ3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:14:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2b; helo=mail-yb1-xb2b.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 71B2A83EED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71B2A83EED
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71B2A83EED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:14:14 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id
 3f1490d57ef6-dc6d24737d7so1839094276.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 06:14:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708092853; x=1708697653;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/DxwTOf5kx7rr7gaBgtPBS5c57nxY8Bp64eyQ45LJhg=;
 b=GmvehNp8PA341ApmvnmiL1Ty5F9OeglzwsokavTmbkQU+qmEwO59bQ2atjRrOVcQeM
 b5Q/STYhf/qQjXsX2TyKHUfgUXTLn2XYg/1uxQODOWn6JnpACRaB9mpT0ntp/FI5Iyap
 bZSzZ0d1blmeBIHFFtT+vUwBCqN2vHMQQ9/2lrkvQC3MEtZRNoQExaAUWVgx/93VISHb
 vcrTjIKau29ZF6MYAiz6hK2b/mx6qWBJmgccj67CxJzKXxyB7L/0H+KgP1gMRZQHmIUr
 +ynw4AwUmkzsVHN2zb9BsgJHjwp22nNesku+5SlnOhQGYPvsn7RPSydmQO6Bfs4uE06A
 QUVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUM18Ytpm/dZb1xYtg/A5yPdT2gX6Xxo6GF3v4YYwIM116Hg1UP8MZVisK+iVxkLNlVsRaVCvoTqjpIIumUxLmuA4J4DvhfygN3se3I4lPgzA==
X-Gm-Message-State: AOJu0YxZVhdhnH38Jw2c81rG4hLfRyFOcDpq5XSdxmRCOOoShjwHOma/
 Q7zuNiZZvzmUHWDewauvunhrF9JTt3BOYvuv2rzlUxDWzGcGoXSJmR/XvcA7pPr2tHc/5okeXYo
 yuMi0WlMaRjuFd5LtXu9+TYyeP60=
X-Google-Smtp-Source: AGHT+IGQeDpO3qLCUtbOk3p+jTtxbU6hWaP/Iz24wCfOyfu8LY3PZiARuxQt9DyBevQPnS648u0las74DokIjDihun4=
X-Received: by 2002:a25:d3cf:0:b0:dc7:4c92:16a3 with SMTP id
 e198-20020a25d3cf000000b00dc74c9216a3mr4371146ybf.27.1708092853137; Fri, 16
 Feb 2024 06:14:13 -0800 (PST)
MIME-Version: 1.0
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CADFiAcL+2vVUHWcWS_o3Oxk67tuZeNk8+8ygjGGKK3smop595A@mail.gmail.com>
 <8eb6384a82fc4c4b9c99463a6ff956f04c9d5e33.camel@redhat.com>
 <bad0da2c-546b-2e05-feea-d395439a0bb0@intel.com>
In-Reply-To: <bad0da2c-546b-2e05-feea-d395439a0bb0@intel.com>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Fri, 16 Feb 2024 23:14:02 +0900
Message-ID: <CADFiAc+RP91PfEBAnwbABjrHJkdLc0=nm3_TE=+ZaN1AiVQEEQ@mail.gmail.com>
To: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708092853; x=1708697653; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/DxwTOf5kx7rr7gaBgtPBS5c57nxY8Bp64eyQ45LJhg=;
 b=nc7l17JWapYlYCR/8hgj8V4hrkueNF6QqUJD2jHaAABwFx/8brmkD1YxXWdoOSoq/R
 ttKW12u/RIOEOCwQc0at8uNOzwkFy0+G1I/QYwYRV+0CvzKat1uy1gxH2Aj6X6uNwfiX
 ZRasNoCfCIvayYLN6WUZy8YLkBzXpahE6jrAjzBRtWAqIhGwXm+xfQRkpF4hr9dp73fb
 kWFAZdjN7gyxjeSZ0hxojKhjlPpJWKy5ruMtb6S3vmjSyRcd84vuIcKEmW+Dt00D7Oll
 9sO4KCIJrVVuERsmP8jnxY66flYR7Pj4R6LiewIMNOiDaOUJrvZcrgRGAG0v0YOHnEPa
 0oKQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=nc7l17JW
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony-san and Paolo-san!

> > The series LGTM. I *think* the series should go first in the intel

Thank you both for picking up on the topic!

> I agree. I think it would make sense for this to go through IWL.

I understand. So, it means that it will go through the IWL branch and
then through net-next.
Is there any assistance I can provide to facilitate this process?

Thanks,
Takeru
