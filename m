Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8AE9510C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 00:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0CC187FEA;
	Mon, 19 Aug 2019 22:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YTUHaALj3D7; Mon, 19 Aug 2019 22:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A620887FE3;
	Mon, 19 Aug 2019 22:44:52 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7E5B1BF2AB
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4D3783F31
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ijem1TUxSK3a for <Intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 22:44:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D25CC840D2
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:44 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id k3so2006108pgb.10
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 15:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=h+bmO6ifOt0xyWqO3x/fhlnMfoQ31VebUf8wRJ1Vid8=;
 b=GdsnLJlOWcgsE2GEsY4GEQdxY+SzRHseexxWo1hN1pf/QZq9pbLwB/Fzg7TupLthLW
 0V2skmZHMtSZRE0e56zNzhmxVuPUCNWZmC6F5H5AOKykGY2Se17S07SkW6+b+mB2Xnmy
 QugFzB3r+5n/yoMu2xlYt8SettcRXnuFQbFCsqH+tveDs9RtomqP8O+im/a3bL9i3KSp
 PqLv2/WmRY66oM7jNo98X0Uvc9R+0zsUvmbzp89Ybef7awiLm+vopnH3w/ZvObC+kIro
 LfJhTTR0SFJSiKR14BUNVyaQTSdilISSSTfG61nszWyO7xnKVcP6Iy1RI8pLUfvUqo1v
 M6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=h+bmO6ifOt0xyWqO3x/fhlnMfoQ31VebUf8wRJ1Vid8=;
 b=nKjIFpCQkHAVGM5tGMHFZ8S/T/Dr8mSvU4Qj/iTStoS7ZQzpJsGQj33QsP81VCW5hQ
 IbSEcuWVXf0zTSCssQZUOzW/Gg3gywauM1ZOed2p9GecmZ2nPNkTYL+ueqpHFe/16Dlo
 UdhVMC+o+AztZMz3L9MOGSGwhOE6mZ8VtEAebTcYNb875tbo/ORhOJjWeAFA4hPXbGpL
 uM/aRP7e9Wlnvbf0rVuofaEmFsUovRr1zqg1bLeXESe+1bqE4NRHmnsz/n1e5l1VyMpp
 feY4e+/a4DAEXoNRs4UvNl39IPeX3hcKJybAsJPPYSVyh/CQae/dQMQXwrZuwOOmDcyF
 aB0g==
X-Gm-Message-State: APjAAAUaQWKZ1sO6SDBTHT3pxXnAuT8Kw72F+ME9B/4Ds6SagqMU2EON
 Z3TM9H9a/Stu7XIXeWMzuwJ5uzrr/TI=
X-Google-Smtp-Source: APXvYqwgZ0gO6pZPzqmcMJNiyFmeFS9EB9LIRSuI7oOf53t4L547QDBRxa8dCyudE1GQ4mCe986O6g==
X-Received: by 2002:a63:1310:: with SMTP id i16mr21714672pgl.187.1566254683786; 
 Mon, 19 Aug 2019 15:44:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id x10sm14676947pjo.4.2019.08.19.15.44.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 15:44:43 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
To: Intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Aug 2019 15:44:18 -0700
Message-Id: <1566254665-5200-1-git-send-email-tom@herbertland.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH v3 net-next 0/7] ipv6: Extension header
 infrastructure
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
Cc: Tom Herbert <tom@herbertland.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset improves the IPv6 extension header infrastructure
to make extension headers more usable and scalable.

  - Reorganize extension header files to separate out common
    API components
  - Create common TLV handler that will can be used in other use
    cases (e.g. segment routing TLVs, UDP options)
  - Allow registration of TLV handlers
  - Elaborate on the TLV tables to include more characteristics
  - Add a netlink interface to set TLV parameters (such as
    alignment requirements, authorization to send, etc.)
  - Enhance validation of TLVs being sent. Validation is strict
    (unless overridden by admin) following that sending clause
    of the robustness principle
  - Allow non-privileged users to set Hop-by-Hop and Destination
    Options if authorized by the admin

v2:
  - Fix build errors from missing include file.

v3:
  - Fix kbuild issue for ipv6_opt_hdr declared inside parameter list
    in ipeh.h

Tom Herbert (7):
  ipeh: Create exthdrs_options.c and ipeh.h
  ipeh: Move generic EH functions to exthdrs_common.c
  ipeh: Generic TLV parser
  ip6tlvs: Registration of TLV handlers and parameters
  ip6tlvs: Add TX parameters
  ip6tlvs: Add netlink interface
  ip6tlvs: Validation of TX Destination and Hop-by-Hop options

 include/net/ipeh.h         |  208 ++++++++
 include/net/ipv6.h         |   12 +-
 include/uapi/linux/in6.h   |    6 +
 include/uapi/linux/ipeh.h  |   53 ++
 net/dccp/ipv6.c            |    2 +-
 net/ipv6/Kconfig           |    4 +
 net/ipv6/Makefile          |    3 +-
 net/ipv6/calipso.c         |    6 +-
 net/ipv6/datagram.c        |   51 +-
 net/ipv6/exthdrs.c         |  505 ++-----------------
 net/ipv6/exthdrs_common.c  | 1158 ++++++++++++++++++++++++++++++++++++++++++++
 net/ipv6/exthdrs_options.c |  342 +++++++++++++
 net/ipv6/ipv6_sockglue.c   |   39 +-
 net/ipv6/raw.c             |    2 +-
 net/ipv6/tcp_ipv6.c        |    2 +-
 net/ipv6/udp.c             |    2 +-
 net/l2tp/l2tp_ip6.c        |    2 +-
 net/sctp/ipv6.c            |    2 +-
 18 files changed, 1881 insertions(+), 518 deletions(-)
 create mode 100644 include/net/ipeh.h
 create mode 100644 include/uapi/linux/ipeh.h
 create mode 100644 net/ipv6/exthdrs_common.c
 create mode 100644 net/ipv6/exthdrs_options.c

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
