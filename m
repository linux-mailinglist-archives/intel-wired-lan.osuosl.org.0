Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712D490A7C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 23:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2035687DCC;
	Fri, 16 Aug 2019 21:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-eiqQtsIWVR; Fri, 16 Aug 2019 21:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B006687E90;
	Fri, 16 Aug 2019 21:54:08 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 200991BF35B
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1BA3487E90
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCDp1cN6egAa for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 21:54:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 734D087DCC
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:03 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l21so3577189pgm.3
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 14:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=Aw94uYFFhBM0kJQFdFfLplowSvYNPaLM2M8M9OiTCDk=;
 b=oD2tIcevFdCcwN8Jv4jeLhulnKjnxuy06WtpO00zR9ohJeyCE3Bik8jvgkgE73T1fD
 FY4mr8zW5QQylURalGisPfajvAF+p3+wyzCX/FrUWvAOZVKdCBET1aFiL1No7+ouJKCX
 P7vS8Fb8a80ntX9t2mQT58BUnq6JEkboyp20wdva03z0NFoisQwxH3tXGgp9Z4T+SCRP
 V5OIAWDlbWiTd8XSQb+mgLf5BKgeCMDKocF8zHnbYZPp0ZiPLxEPuXFa0VYrWhZT5iPN
 QE+hTcf7vNAGhjIjTQAfTz+dBTQ0sTUXySQ3byBVjDKKC2ZNvfKVM4qvuJ2Y3eImWwZN
 NkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Aw94uYFFhBM0kJQFdFfLplowSvYNPaLM2M8M9OiTCDk=;
 b=uA0Vlk2YHzrmM/Yjm7iG2aP+tQHGzJ3pS3AiXgn+iBwHYCOubo9Ad9mkxUizqXLde+
 ZesJUP3jCKeTHNU2FeYVk1pLEONEIRfdFQnwt2lQJtmgTpKiFwQXrAC/Xntk9ruxKvLN
 b9SMSfm/Jmm5+F6drYeS8WFl5yHQT5lkfrDvQibb49YaaQws2MBCC662I/HE9rYyGBA3
 cd8mBj24pL41mhzLyRZplR0KO+unCIr9TLB5XJSf49JnGgKdOzkNCLuV23qXiz7a6VDr
 98m7iwcosYVPNgBywKbUI+3fL3tE5xuZYMbJnOCxcc7IT5BmMj7tdeeCyxkE2U8d0Ue/
 pUtw==
X-Gm-Message-State: APjAAAUOnFwn+7UU25U75wMRulInjZB6z4XHkgXErdewaiYf+IhuKJiW
 g3dxgM53OkvNuHmLj/EWUOAxb9GSEJc=
X-Google-Smtp-Source: APXvYqxEbaZgsX4G7hAm+6Awp0XwPmKc5qICKudRNyQ0xv+4BqEs3xExwsGeuFCu1zmdGmFQMEfiqA==
X-Received: by 2002:a62:8246:: with SMTP id w67mr13158259pfd.226.1565992442573; 
 Fri, 16 Aug 2019 14:54:02 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id r12sm7151355pgb.73.2019.08.16.14.54.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 16 Aug 2019 14:54:01 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
To: Intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Aug 2019 14:53:37 -0700
Message-Id: <1565992424-22379-1-git-send-email-tom@herbertland.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH v2 net-next 0/7] ipv6: Extension header
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


Tom Herbert (7):
  ipeh: Create exthdrs_options.c and ipeh.h
  ipeh: Move generic EH functions to exthdrs_common.c
  ipeh: Generic TLV parser
  ip6tlvs: Registration of TLV handlers and parameters
  ip6tlvs: Add TX parameters
  ip6tlvs: Add netlink interface
  ip6tlvs: Validation of TX Destination and Hop-by-Hop options

 include/net/ipeh.h         |  205 ++++++++
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
 18 files changed, 1878 insertions(+), 518 deletions(-)
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
