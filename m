Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4505A8B304
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 10:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9D5A61AE2;
	Wed, 16 Apr 2025 08:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNTecFofexQe; Wed, 16 Apr 2025 08:12:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46DF461B00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744791160;
	bh=H/4bHaraL4n/P0iTE+QqqFajLDyDWyG2jsQgWhbDjMQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9a/dErVvRQhKVtdQaYFP5qa2ySdZfukddfvvJ+j5vEGbNPWV+16A5xkWLGZpcJh+c
	 /hmGmrD/8SAvE8gQAiptpv7YsuZDMh7y30d+EcLnQkmHiFhNfNTjOB+/IsXo4r3Vua
	 TH7vRmkVqviqbNSYB9k7ERS9yONCdAL2KOmEOwq2kd8r0GtRSS/52cIsPz5bGj5HKb
	 jUPAp7ojGjJISZUgJi+X+Y4+f85zS17SWuizpG3OjHXXE0XXF+0XgRHANCgS4qffWv
	 p9iqMQLGO85VrP6oM8ZTIK25EfYD8igUlWJT3dD4SF5Y1tPMHZB3iM7Cu4QiF8emsL
	 DXI0CVSrrFutA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46DF461B00;
	Wed, 16 Apr 2025 08:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD4EDDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEAA140810
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H13Ucbqhefbt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 08:12:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75AFE4124C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75AFE4124C
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75AFE4124C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 08:12:34 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-39149bccb69so6344128f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 01:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744791152; x=1745395952;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H/4bHaraL4n/P0iTE+QqqFajLDyDWyG2jsQgWhbDjMQ=;
 b=EcRUhDtJ5DdY9HNoPfweIA6VM5/NZQ/xeOa73D/UY+wv0OS1+vsnujqGGiqeX79S1C
 sfYhDGGGlVg33zi6cEJciVexB2+ej0ZetDIHArRyxgNN9ip5TMT0uQsRNjoYaBtswMlt
 zexpXd0xGB6g0VgSw6iEZXsQKRnm34yeiCr1ZEZVzZzvIJNGku/gh63fDokonaJZHQ3d
 Sz2keFlby0sGkJ5Zfxg8tLOetkeWdE5zlGJfo6g129Y1e6pCa7RagOYQCiXayl8xWBMn
 Wn3aiSR8+2+7GYzm/h1WJ89xx5KyMLuDVDkSn8AGe6qDItx0gDqi4o0vYl9qqk5bLebQ
 /JkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXs4HXwBqOhBN1/2n/KyIL3MPOr9pkNTTrPQTVoQf8HrIe0h0LgMk0H4H1KvBKhzhU2sixzJvGHjGLFra5s4Ww=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzkWRsGfr+4IVw9c+9GnEtR29uut/Rr+8H+eQxiAxMFU+DGlm2k
 wYRpj7ygnfuN8zRTHeZgYNm6XdxSGNy+fRaYQhkftTxQbIU3jad3s59T5r6KCPA=
X-Gm-Gg: ASbGncsisZCGehpigmtGyHeSdL6q/yblTcqFXOw0H4ixyQQS1400tyLgcrIwYafuNHY
 885JPzFOUTZZEp2ruP5c8XqAGTuw+U33E0zkyrURc3FhCY8o+NSUkjb5sHnhuMSXQUhHohwE/2r
 2H0DmH9MN8JwLJcAf5x4nigo62ugGTI8HC8wvIb1I3imZuPe39mCR0Wt1z2ggY5Pi4JlvdZFDdM
 Gl7bjnWFVKcUR200CrkBeWOPFI1Vn6vndqHRD571EQ7m9F8ox72Po83/r2FSBa6LCh8uN8asX3c
 u0OSfStlyjK63PCGhp129/IL8xf1coCmYIo5mDABHRX8f0+RUdAOIA==
X-Google-Smtp-Source: AGHT+IGxaQcIkGTI0aBQCrdg5Mdz1bajPY1DljdFhlFnwzhWRIuUx+MIrx6GZMLHMpwt9t1FLRkhxA==
X-Received: by 2002:a05:6000:18a7:b0:39c:2c38:4599 with SMTP id
 ffacd0b85a97d-39ee5b9ee51mr819435f8f.48.1744791151941; 
 Wed, 16 Apr 2025 01:12:31 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39ee6010449sm515446f8f.9.2025.04.16.01.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Apr 2025 01:12:31 -0700 (PDT)
Date: Wed, 16 Apr 2025 10:12:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <6ss5qghishcbbbmj6ifitafl6fnbfhnw6crrkitgunays4qtqv@ixvlqemyij6x>
References: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1744791152; x=1745395952;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=H/4bHaraL4n/P0iTE+QqqFajLDyDWyG2jsQgWhbDjMQ=;
 b=bc236cvdA5bQpTukRWYePXFijziOH+NOASOYM0zvk7Y1tLLCUsyUJkgY5z/QnIu+Nj
 +eYOKW+iugj2bMjRf2xdTWsPM58wBujr+A0UtklDbi0Fao6SZAVTojHpnVXtHvxKRezu
 9sXvuHEgdWSBiI0Rh5ATcOEnHU/bIby4njLF6/CQK3RCav1zyHQAx1zReBHp+TbK0n41
 ou7rPyVKfJiPVWNUqKvI/aBBHc3x+un1Gskqgy5fd6y1ATlSeQemCtrkhEmB3D2EpyL0
 aX05buccVoHc4Irl7yYk8J7PV+RWNeMLLf/wfTqLLNGKhiuTPc4PBbrIetQVGZY6eSfm
 Ih2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=bc236cvd
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/3] dpll: add ref-sync
 pins feature
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

Tue, Apr 15, 2025 at 07:51:12PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Allow to bind two pins and become a single source of clock signal, where
>first of the pins is carring the base frequency and second provides SYNC
>pulses.

This is not enough. Could you please provide more details about this.
Motivation is needed. Also, from the examples below looks like you allow
to bind 2 pins, in async way. Would make sense to bind more than 2 pins
together?

Honestly, I don't understand what this is about.


>
>Verify pins bind state/capabilities:
>$ ./tools/net/ynl/pyynl/cli.py \
> --spec Documentation/netlink/specs/dpll.yaml \
> --do pin-get \
> --json '{"id":0}'
>{'board-label': 'CVL-SDP22',
> 'id': 0,
> [...]
> 'reference-sync': [{'id': 1, 'state': 'disconnected'}],
> [...]}
>
>Bind the pins by setting connected state between them:
>$ ./tools/net/ynl/pyynl/cli.py \
> --spec Documentation/netlink/specs/dpll.yaml \
> --do pin-set \
> --json '{"id":0, "reference-sync":{"id":1, "state":"connected"}}'
>
>Verify pins bind state:
>$ ./tools/net/ynl/pyynl/cli.py \
> --spec Documentation/netlink/specs/dpll.yaml \
> --do pin-get \
> --json '{"id":0}'
>{'board-label': 'CVL-SDP22',
> 'id': 0,
> [...]
> 'reference-sync': [{'id': 1, 'state': 'connected'}],
> [...]}
>
>Unbind the pins by setting disconnected state between them:
>$ ./tools/net/ynl/pyynl/cli.py \
> --spec Documentation/netlink/specs/dpll.yaml \
> --do pin-set \
> --json '{"id":0, "reference-sync":{"id":1, "state":"disconnected"}}'
>
>
>Arkadiusz Kubalewski (3):
>  dpll: add reference-sync netlink attribute
>  dpll: add reference sync get/set
>  ice: add ref-sync dpll pins
>
> Documentation/netlink/specs/dpll.yaml         |  19 ++
> drivers/dpll/dpll_core.c                      |  27 +++
> drivers/dpll/dpll_core.h                      |   1 +
> drivers/dpll/dpll_netlink.c                   | 188 ++++++++++++++++--
> drivers/dpll/dpll_nl.c                        |  10 +-
> drivers/dpll/dpll_nl.h                        |   1 +
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
> drivers/net/ethernet/intel/ice/ice_dpll.c     | 186 +++++++++++++++++
> include/linux/dpll.h                          |  10 +
> include/uapi/linux/dpll.h                     |   1 +
> 10 files changed, 425 insertions(+), 20 deletions(-)
>
>
>base-commit: 420aabef3ab5fa743afb4d3d391f03ef0e777ca8
>-- 
>2.38.1
>
