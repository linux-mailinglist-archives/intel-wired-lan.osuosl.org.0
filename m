Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D755361E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 17:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61CE683F6F;
	Tue, 21 Jun 2022 15:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61CE683F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655825487;
	bh=nyEI9ty35rWrhML2alydzwZjsCn2IFvhPsPselBpdPk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Weak6MlURWG7jpc6e/RtOdzJjo7KTy2gKoyP4+FzP//EWhTDIT8H3Y6pU1HYO51Z3
	 8PpY0DkipqTfTWRiTO5QXe3LTdNPrKi8mDAAgsH1uNGP2UwsvtEctsy5C2GVVjAvj2
	 f5CP9ZBVKqdz3+JU0DBbLp+VVkQBrtnwWeQ9eE0B9pNMkhP6u25sp3+KrYL6PmAzL+
	 5VhK2FBp81UJ0npF+VS0vW4i6TiNov2yV3mkJAxEw2AVClEJwkTueu9qRTCqE3efUU
	 hrpnvnqWnKLrOyAzNe9kRUk+rYBho5zRnQV8oj/kA6YykMvve6JmuHZmSVoeLLOF71
	 D1j9ANxcwBAlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3LoQtjVKYBL; Tue, 21 Jun 2022 15:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 510EA83F67;
	Tue, 21 Jun 2022 15:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 510EA83F67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 805501BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56B3A82EA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56B3A82EA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfnPQoYMxq6k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 08:39:14 +0000 (UTC)
X-Greylist: delayed 00:07:32 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD03482C8E
Received: from smtpbg.qq.com (smtpbg136.qq.com [106.55.201.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD03482C8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:39:13 +0000 (UTC)
X-QQ-mid: bizesmtp72t1655800158tfnrwfs8
Received: from ubuntu.localdomain ( [106.117.99.68])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 21 Jun 2022 16:29:13 +0800 (CST)
X-QQ-SSF: 01000000007000109000B00A0000000
X-QQ-FEAT: Mzskoac49Og1pKkwi0Uw9GzgjMlyWLwT52H3OZ9eWzOYvgJmdAskrojWW4fK3
 4HQXdpqsjdOdcQBHh6i1463QxybshHDWihyQ4BOrdDP4W+GL5bhlWAm8BIy+bodH9cvuAiE
 e/HoK3VgBrdIpVA/mvyMNC3k0S/HSI+bT0ya13s2cbDcV+CzRNe58Qku55jjIUe7WjMjPw3
 o5O6RMdEXZy5+vTstBiW6H8szwjJg5zcT0tcPrhFOhG8qEx0a4vMgYBF7kTNTn+UlBqWVW9
 UP1HBIzF8sjWHS6r1xQWvvUR4YdQWbVdbcxgtKC7Rew/FzABzJ2/zgk11LntTSHLUiT3F1s
 x0nL7HULGOIbqnc0Ic=
X-QQ-GoodBg: 0
From: Jiang Jian <jiangjian@cdjrlc.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 21 Jun 2022 16:29:11 +0800
Message-Id: <20220621082911.53165-1-jiangjian@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam7
X-Mailman-Approved-At: Tue, 21 Jun 2022 15:31:12 +0000
Subject: [Intel-wired-lan] [PATCH] fm10k: remove unexpected word "the"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 jiangjian@cdjrlc.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

there is an unexpected word "the" in the comments that need to be removed

Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index f2fba6e1d0f7..87fa5874f16e 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -809,7 +809,7 @@ static s32 fm10k_mbx_read(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
  *  @hw: pointer to hardware structure
  *  @mbx: pointer to mailbox
  *
- *  This function copies the message from the the message array to mbmem
+ *  This function copies the message from the message array to mbmem
  **/
 static void fm10k_mbx_write(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
 {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
