Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6554876C482
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 07:04:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD4F360F6B;
	Wed,  2 Aug 2023 05:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD4F360F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690952638;
	bh=a0k4FtumpqaDhlK3R9tv2Zcb06wWeiBQEIAt8DRCN9E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BBqGYVPwHcJFK9jvJQE0C4paSjapyH7lweXJaTpPa/Cj0v0nMWg+3LFpTjxKRceEK
	 EsSafgIT4/w2x9QuCvz7RVrbQibluC8rpNiBlx4Tzvu2FnVAfKRw3+EwLiQHRMBnIQ
	 JrseGjHQyx295xC6vpH1tzwnXMruHh4/4xPY+lgk/EPOUfjK93T7stt31XpD4cozIM
	 6z3iDhOdB6koxL3PdGMY+obTe8Foiunm5dhn0etqRLtlt7+mKtnW48lr7I+hz6Gm6M
	 nMfP96WeOyHdHwwh9Cxo3iCxCnG91BmwqQ/11uILa7oVhx070PAfC7GHHuA8y/OBar
	 kC3oqtphNqxcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiSdg1JFErwk; Wed,  2 Aug 2023 05:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9E8960B2A;
	Wed,  2 Aug 2023 05:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9E8960B2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60E861BF33C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 730AA4174F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 730AA4174F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDSs2uiPYqYR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 05:03:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BEFC94175A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEFC94175A
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E8F3D617CA;
 Wed,  2 Aug 2023 05:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED9E6C433C8;
 Wed,  2 Aug 2023 05:03:42 +0000 (UTC)
Date: Tue, 1 Aug 2023 23:04:48 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 fam1-i40e/0001-i40e-Replace-one-element-array-with-flex-array-membe.patch@work,
 fam1-i40e/0002-i40e-Replace-one-element-array-with-flex-array-membe.patch@work,
 fam1-i40e/0003-i40e-Replace-one-element-array-with-flex-array-membe.patch@work,
 fam1-i40e/0004-i40e-Replace-one-element-array-with-flex-array-membe.patch@work
Message-ID: <cover.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690952624;
 bh=Lh/8DXYnrVwSuT95CJrJrjg3AAwX2dmsR+R7uiAEAko=;
 h=Date:From:To:Cc:Subject:From;
 b=r8e2tnRr6NR/LJPVYeu/KXYVkqyD0lFLFN6wGOkUXSTnUvkHDwxIOHNPqVuq3fu18
 dW+IjDhbZTUUy5VqJL3lObzr1M3wg9vwgla000FujrcSx8KH3fxIaGKnFHXW8HruSy
 aoeKf9L4La43QQvz+pDwhEZOykqvRb2M6cNfJOMAfR50hmRGcM19Wtos27b39mV66G
 G6E3LxGY1Sp5kwbXVMy+Y+h2BFcyVip+M00JjLHhuP6t9Xb4B90mubprHGO93YA9yX
 GGLeuFgMQoA9czqR3P1/u6sJZX5FR1OPeiUhgC8R0atIvazIzrSgdU5TvvZ6ZyLDcN
 Vc6wXOtl+e9Mw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=r8e2tnRr
Subject: [Intel-wired-lan] [PATCH 0/4][next] i40e: Replace one-element
 arrays with flexible-array members
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace one-element arrays with flexible-array members in multiple
structures.

This results in no differences in binary output.

Gustavo A. R. Silva (4):
  i40e: Replace one-element array with flex-array member in struct
    i40e_package_header
  i40e: Replace one-element array with flex-array member in struct
    i40e_profile_segment
  i40e: Replace one-element array with flex-array member in struct
    i40e_section_table
  i40e: Replace one-element array with flex-array member in struct
    i40e_profile_aq_section

 drivers/net/ethernet/intel/i40e/i40e_ddp.c  | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_type.h | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
