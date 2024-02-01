Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D2844E3D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 01:59:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03B6742131;
	Thu,  1 Feb 2024 00:59:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03B6742131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706749188;
	bh=fnA6L1M+2ngP3XBAVkCJ/2X93cQHtcov6Oy79KZ7gIg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h88O56Hgzm/8AF5qmVKdAFAry7QC/wQK0qn+M0zLLH0ZtjhO2EdrkerlFfyjKgztf
	 1YMuPxjv7gZfDJAXsMwGmLR1PIOtaKDRJdKQoIzU5wV5dCZZRSyq6w7m+NzgTCqeBU
	 cZF3OTqWFTsJzS5fuvBv60dVxmzQkfms3tngIDpT9tIGSXOffbpNXhzPCFrpesjULI
	 LVgcCFP4Sgoxg9jVzbJVlyRM7Zt+XPWIxgktfxi+jYM3l+rJofqt4X8OStQM1cSJPW
	 OuhgA1n6aHaLtIFIVj8pCRDlBxaVoKDrxqUVyc84FyP+qniTl1pIhm3pMA017Q6HDp
	 fwGluslhZdBZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_uig2mQ4MRA; Thu,  1 Feb 2024 00:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2258242015;
	Thu,  1 Feb 2024 00:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2258242015
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7586C1BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 00:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40B0740118
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 00:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40B0740118
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGCXAZhUQFBC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 00:59:40 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38CEF400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 00:59:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38CEF400CE
Received: by mail-yb1-xb36.google.com with SMTP id
 3f1490d57ef6-dc236729a2bso364633276.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:59:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706749179; x=1707353979;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fnA6L1M+2ngP3XBAVkCJ/2X93cQHtcov6Oy79KZ7gIg=;
 b=gofswT6h+H40hiS91qhcdhVnK1rb85oR0euYWLOe1H7++a4hef3oZKSwzbbCil+Jrw
 Q5gLDDRHYBIZvs7YyhD05tVg9EhV06zpAxMsY91FtUzoVrr4tZwZpSebIISvb8+6ayQ2
 bl9Wn3CxVfUgxFk+6D1D7TqUaLlSsltGSeBNc3bOLH9eHFDrzxkXpzjRgGGrN2ZUvsKI
 aidLqEoIbTWEX3TQc09XDGHucRZooEe1owDtYULo9y5Ffh6Tm1zGDwbpTC4sZHryfqdU
 DPxWA33bs29GI4e1lpITaUW8UOjaqirGrPtQn/oMgNMJwIFIWTelg7qbOwpAVf8zT4R+
 BT8Q==
X-Gm-Message-State: AOJu0Yw/tTIM8f8jfQgLZA5HLzpfD8e/mOicLbSMz0jL3Ylxm/v8LPu5
 VMLND3N4moD23PVjq8negKQ5SWWzZWWpQmvRsiBGC1LWU0ItWUEc7AO6k13EGbXUL8ifcfHbsYv
 6xcw4DB/7+XH3YEQK8e93oQ9/Vk4=
X-Google-Smtp-Source: AGHT+IH+sI9yJQvIvZr607dY7V2Hw5Wgr4Mq7UB6jdlS+TAeU4Whu2zcygKmUuAXqLwjM6y65ECm9pwU04l3Eq8PBZM=
X-Received: by 2002:a25:c793:0:b0:dc6:6307:d194 with SMTP id
 w141-20020a25c793000000b00dc66307d194mr796730ybe.48.1706749178945; Wed, 31
 Jan 2024 16:59:38 -0800 (PST)
MIME-Version: 1.0
References: <20240131134621.1017530-1-hayatake396@gmail.com>
 <20240131131258.47c05b7e@kernel.org>
In-Reply-To: <20240131131258.47c05b7e@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Thu, 1 Feb 2024 09:59:27 +0900
Message-ID: <CADFiAc+y_SXGtVqZkLoiWw-YBArMovMkuWw3X596QDwEtdBJ2g@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706749179; x=1707353979; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fnA6L1M+2ngP3XBAVkCJ/2X93cQHtcov6Oy79KZ7gIg=;
 b=igyOvWosw/aYA/L9tfdaGLL16jdE3ROBSZ702yLEO5x/8vJV+ARjgrCCnO7DIPXdwT
 F7OVfPaAFi+hMZGzhCscCCbdh3KW52///TEikfTYJoWufCzgQVQsBAqF5UA/0t9aL711
 v1oqJBSHW6Ud3OTVbQZAz1ym+00/1OkE7mfo5aDzLP7SKB8Zy/839qHAJWvogn2vEPbi
 lcybIgHjmdrs4g3JBPjGQthgwYS2eXnStVU/F+9LrXHeIU+sRCzIniLN0agOjgzoZNIV
 GbN1r1mqT8oLiKMAJksF2ZBUFxzbRAzPLGO9D/MsxXBN+pVXCxeNQSq2IxaebNxz78zf
 wUeQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=igyOvWos
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
Thank you for your review.
I apologize for the delay in resubmitting the patch.

> Could you split the uAPI changes and the driver changes to two separate
> commits? You should post them as a patch series, but combining them
> into a single commit makes the uAPI addition to easy to miss.

Understood. I will split the patches and submit them separately in v7.

Thanks
Takeru

2024=E5=B9=B42=E6=9C=881=E6=97=A5(=E6=9C=A8) 6:13 Jakub Kicinski <kuba@kern=
el.org>:
>
> On Wed, 31 Jan 2024 13:46:22 +0000 Takeru Hayasaka wrote:
> >  .../device_drivers/ethernet/intel/ice.rst     | 21 ++++-
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 82 +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_flow.h     | 31 +++++--
> >  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 +++++++++
> >  include/uapi/linux/ethtool.h                  | 48 +++++++++++
>
> Could you split the uAPI changes and the driver changes to two separate
> commits? You should post them as a patch series, but combining them
> into a single commit makes the uAPI addition to easy to miss.
> --
> pw-bot: cr
