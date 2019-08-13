Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 429248AC6B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 03:17:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBD68204E8;
	Tue, 13 Aug 2019 01:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7gueh+bhCpD; Tue, 13 Aug 2019 01:17:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10FF02268D;
	Tue, 13 Aug 2019 01:17:01 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E62901BF3C6
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 01:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF59C87C3F
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 01:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sR4CV-wCAoto for <Intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 01:16:59 +0000 (UTC)
X-Greylist: delayed 00:20:46 by SQLgrey-1.7.6
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
 [209.85.221.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BBB587A33
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 01:16:59 +0000 (UTC)
Received: by mail-vk1-f195.google.com with SMTP id j5so1913651vkc.0
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 18:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=rnB6zvYnmpeCqZM/oNkrUehcce5F3e3YLsu8eBmSWhk=;
 b=Z9rtX8+i1nqvRgXqDG3EbZgwkDt9A/VyZ10AEWcC+CFDiFiY7Z7ulNr200ZMEFe1g/
 4wVsaezcbmArHK46uUClaO3gGlXZEcavwgpM2JrqGWuKChFAsBLe/0khwyAq43CymkDL
 HZoHWKAvACGVkYqQdSkpRm4SHVd8qHj31Lind8atXP1RQ9i6aT0KBN9SNUaZXiu5esTj
 WVRNfIJLCpzo4pswRWNiPm9tLs9KjYh0jB80kA2R3bhPfD+yiRW5n3x9d7YP/cXlnkqC
 ttCnVWMxHHDWHobDahWXHV4kDhG9B/5DpezkVXVlTd2cFcFQbI6FjHeAArjoiLAl3Iqr
 hjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rnB6zvYnmpeCqZM/oNkrUehcce5F3e3YLsu8eBmSWhk=;
 b=cTcbS9PRsslEDJeTnQoynERJVUj4kjQ4FIg0lWws2bJicYp0WF5lUsU1o02AS1Ai8K
 1iCkEr7g2iRmLhqkRYcVuoQ+PwPOvncBXbx0mKWttHAmZMNKkWPLK7IlqLDHVem1FUEr
 67AAln3Tw6X3RmpsjMD2SbYXRcfETeJ3Kc1uSl9COPzP/QbOpa3m6WADOTTlz9YWh+IF
 HzAYCszS4XaH0WcQ8mcWzkJbZi/NfM5g+z+0VpWgcHptWRbtKeYckk7lDxSeKvGrgRYp
 AX6M+xE7cyeoFKD+3ZE5vIEzsE9gWeq/279gwdAriJIkyaM86cPBuC5dEx1IIteoHoWr
 tt+Q==
X-Gm-Message-State: APjAAAUs8fR8KWrdKxcPzmak6+fw7HmGdpcOHMb6rer2pYlHc3nm29gl
 T18gFNX0xPa1R4oUMaFM8xLMC9HgHiU=
X-Google-Smtp-Source: APXvYqyk/DKezIyySLUAonRoM5r+yb1Uprv1UJEZtgg/DrjgCCivv8GEM8x5o3fiVi0e6aLlS0vwdg==
X-Received: by 2002:a63:7b18:: with SMTP id w24mr32397601pgc.328.1565657275896; 
 Mon, 12 Aug 2019 17:47:55 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id 14sm105671426pfy.40.2019.08.12.17.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 12 Aug 2019 17:47:55 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
X-Google-Original-From: Tom Herbert <tom@quantonium.net>
To: Intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Aug 2019 17:47:34 -0700
Message-Id: <1565657261-15979-1-git-send-email-tom@quantonium.net>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH net-next 0/7] ipv6: Extension header
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
Cc: Tom Herbert <tom@quantonium.net>
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

Tom Herbert (7):
  ipeh: Create exthdrs_options.c and ipeh.h
  ipeh: Move generic EH functions to exthdrs_common.c
  ipeh: Generic TLV parser
  ip6tlvs: Registration of TLV handlers and parameters
  ip6tlvs: Add TX parameters
  ip6tlvs: Add netlink interface
  ip6tlvs: Validation of TX Destination and Hop-by-Hop options

 include/net/ipeh.h         |  202 ++++++++
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
 18 files changed, 1875 insertions(+), 518 deletions(-)
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
