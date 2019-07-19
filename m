Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F4A6D7DB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 02:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D916986538;
	Fri, 19 Jul 2019 00:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qy87mo5mYheU; Fri, 19 Jul 2019 00:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B205386B2D;
	Fri, 19 Jul 2019 00:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A82B41BF9B9
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 00:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A386A877A4
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 00:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KliI5F3yqs9k for <intel-wired-lan@osuosl.org>;
 Fri, 19 Jul 2019 00:40:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9054C876E2
 for <intel-wired-lan@osuosl.org>; Fri, 19 Jul 2019 00:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5NzzA0Pi2TrPisqqxr4BPTmw/1RgH79uci5m7GVteuI=; b=bZshU1WnvZ4ZUBk225UHM7a1oI
 hnqto46Z5vn7+JlFdwIo3sA6+e94lE9DQA7h6kLKXVwAiBHo66t/qmvEaovRdtPQfTr98uZmhb8lM
 Uw7GxIrNEMyjkcjKdwJZ26EX2rPMnsyw4ZJq84g5IpN/MDAyIag5Mes1a16Fep1/N4rbkBEN7MsA/
 ZP96Fz9LBadIvayJmxrDL5/Uoi4vGNAATPYAmiODPE6dQ35PNcN1/PySVvHyD7EaW75RSoyfr0h6Z
 jPGbfwsiNaW+70RgYPF12YfTFoGvXmo9zg7yx/IbrE3/T5AuhQTzlfaBkvvjqWvTTN/rYhbD3BLn+
 YZ6Ky3sQ==;
Received: from [::1] (port=47556 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1hoGwU-00088w-9v; Thu, 18 Jul 2019 20:40:10 -0400
MIME-Version: 1.0
Date: Fri, 19 Jul 2019 12:40:10 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>
In-Reply-To: <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
Message-ID: <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1hoGwU-00088w-9v
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-18 20:24, Neftin, Sasha wrote:
> Please, refer to the commit def4ec6dce393e2136b62a05712f35a7fa5f5e56
> on the Jeff Kirsher's next-queue:
> https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/drivers/net/ethernet/intel/e1000e?id=def4ec6dce393e2136b62a05712f35a7fa5f5e56
> 
> We are working to push this patch to upstream.

Thanks, that does sound identical to my symptoms.

However I tried applying this patch to my driver in 4.9 and it does not 
resolve the problem.

Are some additional patches required as well?


FWIW, I added some extra logging around the new code.  I can confirm 
that it does execute on link regain but doesn't actually enter the loop 
in my problem case.  The pcim_state is 0x00080083 at the time.  So the 
e1000_phy_hw_reset is never actually called.  If I try changing it to 
call that unconditionally, then it can't successfully establish a link 
in the first place.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
