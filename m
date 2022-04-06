Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9FE4F5A4B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 11:53:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C2CF823CF;
	Wed,  6 Apr 2022 09:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iS7qRlzg01bb; Wed,  6 Apr 2022 09:53:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9235E81D5A;
	Wed,  6 Apr 2022 09:53:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B1481BF95F
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28CEC81D65
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk7zXErx2_KB for <intel-wired-lan@osuosl.org>;
 Wed,  6 Apr 2022 09:53:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DF6D81D5A
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:04 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id b19so2330273wrh.11
 for <intel-wired-lan@osuosl.org>; Wed, 06 Apr 2022 02:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HDhSTbbW7xXt8kqWzs+odsHOCgWSTvr/1d4TircSL8c=;
 b=Cglbp+8erWtMAybQPfgniVDgULgXV1FIx2lWhh+ndRv6/yVS1vEfPpBl1540hb/ZWx
 ed2pDH3hC5bVypVktwiakQhNiKHQq8dVv+7UoHSlHGU/9bzBRq6UsxCefVE0M4M0PG8U
 q/2MChgohk86gzizfoe/v7QpjKiUkUK1NNtkgyfBCnIHLuibobUhp3WGWx3bdS9/+AZc
 LPVb6ZbTZT2dYgRYioRlZybpIWfu14pv3YDHgvre2kiYFmGgFfO7l/6gb6oJPvi0r+E+
 zi5DAQYDN8H/dsOz7Ej/3iRoUmUi/Vr7MZytFGPK6NYsgnK7XcCqSTaFiocpVW9OMGS3
 wrlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HDhSTbbW7xXt8kqWzs+odsHOCgWSTvr/1d4TircSL8c=;
 b=YljFsycgWuM9NimB8QoQQ733NDRIslUc5jxhHpGpUcP7nMAt9JZUV/w819+y8stdEs
 sLagbyz5rqkKjMV3zy/wOFBk7DgODK8s23WzZVoQatI2FNXOKW5V0JnctN5D7UQtbSsq
 L59QW+qCvJlVQXa8U9yP5CbTT9SzHKR3Bs/ZZ9bZr9geSH7iNOL9u6wRcdliEZw4AncK
 f6eaaNrls5IYCrl23xydN/vFfbpu0Ic/PVK/yW9X6aUCxAMI0Lc8F2f36cWSCr3EEHSU
 3v8FiAKI5c+Cgi2uu/W7ifaunxlWrGt0JGu9KpdILkZ3/ooujfVrwcdv76q42vhHq+yx
 JikA==
X-Gm-Message-State: AOAM533DpZcpeQM5UfH1e+h4FWzoSWKIAaGWrhZ/ci5K3L01z19RFhQ6
 ozBRdJwpkBHP6eRM6vmjTHxSxg==
X-Google-Smtp-Source: ABdhPJzVecx24aeX/XIXr3Kiz4wmki4YASU5CCzxkxqXdEV7PZeWLJ04FsCtb5yIhRTgAPsBatD8pQ==
X-Received: by 2002:a5d:64c4:0:b0:206:10e0:d73b with SMTP id
 f4-20020a5d64c4000000b0020610e0d73bmr5787095wri.412.1649238782416; 
 Wed, 06 Apr 2022 02:53:02 -0700 (PDT)
Received: from gojira.dev.6wind.com ([185.13.181.2])
 by smtp.gmail.com with ESMTPSA id
 f18-20020a5d6652000000b001e669ebd528sm13874604wrw.91.2022.04.06.02.53.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 02:53:01 -0700 (PDT)
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Apr 2022 11:52:50 +0200
Message-Id: <20220406095252.22338-1-olivier.matz@6wind.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: fix promiscuous mode on
 VF
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

These 2 patches fix issues related to the promiscuous mode on VF.

Comments are welcome,
Olivier

Cc: stable@vger.kernel.org
Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>

Changes since v1:
- resend with CC intel-wired-lan
- remove CC Hiroshi Shimamoto (address does not exist anymore)

Olivier Matz (2):
  ixgbe: fix bcast packets Rx on VF after promisc removal
  ixgbe: fix unexpected VLAN Rx in promisc mode on VF

 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
