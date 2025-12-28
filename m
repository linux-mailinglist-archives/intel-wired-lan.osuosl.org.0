Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5428FCE569F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Dec 2025 20:41:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3EF0809B0;
	Sun, 28 Dec 2025 19:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-cvLhh4lrPk; Sun, 28 Dec 2025 19:41:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3509180965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766950871;
	bh=5KPyZXn7HWfk1U+VNcBhSlEAG+YOIOxdW/Kr4DE2rJc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EtGIF6z5HRAj9IFDQqI5pPle+554WBQyQqpfO14fdeqa3r0afJoxQkSwEVnXNnrGJ
	 xVZ+uxyq4yqz24oc7tiJ8YhANLDmQYgeuo+43AVJH3uIR482HM479FhLIDunGKV64E
	 uGisgreIRgMH2NfONMLzec37lOAAdYoC2JzxVeUz5ujzm9ndxUF7CHTCVAB+8YtOPj
	 m47BEx0Z0+PvEJqbKpUkNazNDR0e5ZpH5ggNTdspmoYpDfql+CP5KcMC3JGekXXBxx
	 wXM58K24sflfgH/GjST65hG9mt6FX16hG0oD0ZPpe9WsXvZIcKQSYCs/gswbQuxvZs
	 t7APJ5FYBPhGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3509180965;
	Sun, 28 Dec 2025 19:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DDEE3D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA83040083
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id flf6BJrhxyBH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Dec 2025 19:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D66AF40072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D66AF40072
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D66AF40072
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:08 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-ER2sfVheNkWPmc56vG9klQ-1; Sun, 28 Dec 2025 14:41:06 -0500
X-MC-Unique: ER2sfVheNkWPmc56vG9klQ-1
X-Mimecast-MFC-AGG-ID: ER2sfVheNkWPmc56vG9klQ_1766950865
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-430fcf10287so5995936f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 11:41:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766950865; x=1767555665;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=5KPyZXn7HWfk1U+VNcBhSlEAG+YOIOxdW/Kr4DE2rJc=;
 b=iAhVbnFU9QgRkdVO10UF8fBmge+iROWxyoT2uUMqkig9X/+2bksXGhSd5oipkZfZxv
 mwfMdp0REsS1IievU6TeN6xl90q7ByPq/6pHBslGrMnJJNcvPx7nNp10ZByoxv8VPAHy
 nLDu8hF1CKMGiGATCm6qAoLEanAuza4QWx9Rw//1gxzKxbJXhfpCwGaC7wnJ8Ho8xlW4
 zvr972efhhJVifpdL6bw8YXY90jrtehuMjo1he94/awUWfII0G3gWHr8hsbhjzvTyRdV
 E4Oi/EQodzTLOJ5RelCIpV8Qrd9CDFP0tbA76FZ9DueEbjsK8iCqhGp5NROwku3pnyWi
 H9HQ==
X-Gm-Message-State: AOJu0Yx7CIUaj4HmKLdAMJEfRb9675EsU89+HI7ap1cbYVt0+sSx9eqQ
 tOa+dh5uKbKSHYtXJuoc5dzusWBDrcavNqA9Yb7KOwdrMq9koybDS+qBwRFDK00IM321MmlShqM
 KWsOW/vlTd0EYIUDtO8RG5lzINzi9+8BOjJgChMUaOUE4dVQu2DKLyyfCd2MVXdeFJ+gSMY83kQ
 Xmh6BZ1ZQIrC06PPQ5IGbTxmAv2ZzKrkR6FCpEph/2tG4qPtApRLk=
X-Gm-Gg: AY/fxX4pjB+S7HBrWVonou2HJ0fEvr0phV72gvGCTooCAyFbBcIMABjRi+U13WfKzQX
 QnHrDIxLGURHZOQr9mC63F4HCRZH8h4HYVNYo5W0qZAcEjPQnGNX3nTeb92d4XVIEWOUkfYfZgR
 h6Rx38LkHHPj+MD8aWCD5JzLTcHYeZVtEkZHIynmRkMEajUO35wZMLsk+cu3rSc1o2grzxHAuUl
 bdJv0td6qzkv4Yo/c+JG762pV6ubx4frgZLGt0rM/8aXeh+ECtzDuljiwEDgaCnRccVrXyesThA
 iu579wR57uh9SESa+98kGlmL0uDzjwNP8DttP58wBQw+w5wLdXDotb48wvPZl1RCeRy73rgZZ37
 qn/HVKWRXodflxL4vB1BnSA==
X-Received: by 2002:a5d:5f46:0:b0:42b:39ee:2858 with SMTP id
 ffacd0b85a97d-4324e50ab82mr37440601f8f.42.1766950864840; 
 Sun, 28 Dec 2025 11:41:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEo5eKLHCPrMiuJAWK3dekdFQFm58PxWVXUObBNMtZL2dxBCtvZnBDDfY5oX/7RDiguI1XDyg==
X-Received: by 2002:a5d:5f46:0:b0:42b:39ee:2858 with SMTP id
 ffacd0b85a97d-4324e50ab82mr37440575f8f.42.1766950864378; 
 Sun, 28 Dec 2025 11:41:04 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.64])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4327791d2f3sm25324182f8f.11.2025.12.28.11.41.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Dec 2025 11:41:03 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com, pabeni@redhat.com,
 Mohammad Heib <mheib@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Sun, 28 Dec 2025 21:40:21 +0200
Message-ID: <20251228194021.48781-2-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251228194021.48781-1-mheib@redhat.com>
References: <20251228194021.48781-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lADR1zKqwPTC6PTC88jTEhHyubbgjZvOaZ0_S14wefM_1766950865
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766950867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5KPyZXn7HWfk1U+VNcBhSlEAG+YOIOxdW/Kr4DE2rJc=;
 b=e73NTEMDr647D1PCPfQYftKdrEbXXGEqPayGvWYihVw/zQlyZX2wWCN799ijJKpwIp9RM7
 pL7JmgKR6m8yy5KcIpK00XVK6lujrl2HBnyI7hdmloZKQfbSqDmSEALEVwUefCQ0WiWOvS
 uNqwwaJHQRKQfnVqBNWrok9QbV/NKu8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=e73NTEMD
Subject: [Intel-wired-lan] [PATCH net v3 2/2] ice: drop
 udp_tunnel_get_rx_info() call from ndo_open()
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

From: Mohammad Heib <mheib@redhat.com>

The ice driver calls udp_tunnel_get_rx_info() during ice_open_internal().
This is redundant because UDP tunnel RX offload state is preserved
across device down/up cycles. The udp_tunnel core handles
synchronization automatically when required.

Furthermore, recent changes in the udp_tunnel infrastructure require
querying RX info while holding the udp_tunnel lock. Calling it
directly from the ndo_open path violates this requirement,
triggering the following lockdep warning:

Call Trace:
  <TASK>
  ice_open_internal+0x253/0x350 [ice]
  __udp_tunnel_nic_assert_locked+0x86/0xb0 [udp_tunnel]
  __dev_open+0x2f5/0x880
  __dev_change_flags+0x44c/0x660
  netif_change_flags+0x80/0x160
  devinet_ioctl+0xd21/0x15f0
  inet_ioctl+0x311/0x350
  sock_ioctl+0x114/0x220
  __x64_sys_ioctl+0x131/0x1a0
  ...
  </TASK>

Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
ice_open_internal() to resolve the locking violation

Fixes: 1ead7501094c ("udp_tunnel: remove rtnl_lock dependency")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4bb68e7a00f5..a91f96253db0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9631,9 +9631,6 @@ int ice_open_internal(struct net_device *netdev)
 		netdev_err(netdev, "Failed to open VSI 0x%04X on switch 0x%04X\n",
 			   vsi->vsi_num, vsi->vsw->sw_id);
 
-	/* Update existing tunnels information */
-	udp_tunnel_get_rx_info(netdev);
-
 	return err;
 }
 
-- 
2.52.0

