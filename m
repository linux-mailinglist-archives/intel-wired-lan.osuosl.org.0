Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 041FB99327E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 18:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08B43402CE;
	Mon,  7 Oct 2024 16:07:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kmo8tAdUxXF0; Mon,  7 Oct 2024 16:07:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1783A402D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728317220;
	bh=Gf+PiJeuT5YXR8uf468cVOB4GwgU6SzIkTri3Fs5PWk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2yCkCX0hG38WwkbDNVqidOnDnvxRs7UoseKXTCIIs36OJMmEIKxDzwAAjuotZzxfm
	 QPOQDYnkm5jTgRo+7HOWxuZ8svlbki971qyaQkAQdUuaMx5xvq05keey+tN7U+lEnZ
	 A/0BPOsRi16+InyYPhuqWfcezA1BFYfeWuP5d3XzC1DrNb+6oau6ewl8Z1kHA/N9fU
	 GbEd5mMG2z0bjNXqWoI0F9ewBr/9hB4nkQVesvdijO0+TcyMrg4yLLZWSl3CijUioh
	 nh2bmQOQUcWuefhhm9EUrICiMD3m9vn35T5f1k7M11Hkzfma9IEh4cQRfCninYS92h
	 oUGoIiBkbU+LA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1783A402D7;
	Mon,  7 Oct 2024 16:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD1061BF955
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 16:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C91F440967
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 16:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsPzwC01tdzi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 16:06:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 02C54403AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02C54403AA
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02C54403AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 16:06:57 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-20b7463dd89so48383255ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2024 09:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728317217; x=1728922017;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Gf+PiJeuT5YXR8uf468cVOB4GwgU6SzIkTri3Fs5PWk=;
 b=pf0VNKWvwzIOd/XRi9753M7cHI8iLHc8CbikeESIvt1+6+shb/7fePf/2WDeormTr+
 Jz9B3UXPYxgdeKqY+AzROglLAkB1M66PlPmPrmxGnnmXnf99+bIZUSlVLkwQybQBFIdO
 +fm0scIL8BfnyOLYjKbSzoSABuloljwGrPgZWZHXAs5wSClP9HpnsyP0cW08dweoMK+R
 Tquk+qOgz/WMx8SZBJ73UflKIK8rssOXPB9FSmxgm4x1yaMbWTKszIz43JAzbhyF9QSQ
 G/qxE0pkK4wA+8B+BXTQGIzgiN83xxYSY6i0sX4vJgES7U08aBJSu+Tu0XnNr7LonOSk
 HG0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUSP2zr7MY8iBtPm2Rt+9/dTC8I3Fl8hjdqfk63VZYQhpwWLophNP0eak5Cq2TlXo+aFvJHE6DmUJY4yG8Hnwg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwT++W5oJ5vP7/2wg/Y2XQ4vMrA+2Q40vDDgzhrKU63AN5S5Grf
 9Qe5HY+rZ8BnF4/5//5Ndko1GSNFXwYXVp4OpPQFt8Vr+KMvOtgF
X-Google-Smtp-Source: AGHT+IEGwDAT9Cv1y8WQER1FRIlOllCMCIASgGerSdmRnTWkgRQSganVf2GcG1sGdzVp1JMLrYG0ew==
X-Received: by 2002:a17:903:244e:b0:20b:ab6a:3a18 with SMTP id
 d9443c01a7336-20bfdfd4372mr211059575ad.17.1728317216962; 
 Mon, 07 Oct 2024 09:06:56 -0700 (PDT)
Received: from hoboy.vegasvil.org ([198.59.164.146])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c138afd1dsm41264245ad.36.2024.10.07.09.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2024 09:06:56 -0700 (PDT)
Date: Mon, 7 Oct 2024 09:06:54 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZwQHHmLeBUBpH71p@hoboy.vegasvil.org>
References: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728317217; x=1728922017; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Gf+PiJeuT5YXR8uf468cVOB4GwgU6SzIkTri3Fs5PWk=;
 b=P5P/piV9Prfz36qZAshXL+WaGN6v2NF+ETem20lUw7I7DVRCk6jjSn4pJbRHwpzKQM
 /gHztxoiq7zbn3NDot57WtOR3kx4zzcimCHjWEmJHgR7m/T5pEyNNNuap+OprBGBh6dx
 sNkxsJoIIh7yt0e2XlHF1egtJG3glZV0KausXRvCW2DWHWnScpsn0N1V+sYfoSJdVEjr
 HooKqZutyga1qpW6oJvp+kTWTlvJBh8BpV84p9jxbjcQ6/hN+Uadq8UJw3FPIWaxqlUB
 +Pg/EJW92DtRYIeu0Ff7ajELcEg316ueqb73AzcEm8Jk1+KD0b7R5YLgten7hDbkAh1K
 /ROg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=P5P/piV9
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/2] ptp: add control over HW
 timestamp latch point
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kuba@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 03, 2024 at 11:37:52PM +0200, Arkadiusz Kubalewski wrote:
> HW support of PTP/timesync solutions in network PHY chips can be
> achieved with two different approaches, the timestamp maybe latched
> either in the beginning or after the Start of Frame Delimiter (SFD) [1].
> 
> Allow ptp device drivers to provide user with control over the timestamp
> latch point.

This looks okay to me.

Sorry for the late reply, but I'm travelling untill Oct 11 and may not
response to messages right away.

Thanks,
Richard
