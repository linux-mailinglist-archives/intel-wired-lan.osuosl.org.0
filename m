Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FD7645F23
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 17:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B42BA418B9;
	Wed,  7 Dec 2022 16:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B42BA418B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670431360;
	bh=hkBkJ85s0rAfzJDaETl1y/cSDMhGEHpj9mY99TKW+ug=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ou1tTtVSEsNw7x1TnMaU1AR6tOds/jHqQl0H/bZiXRH8ThFbRhR8vn3rNAzz1aYHw
	 zFKviNQ+OeExXmqMHZYhUyJWEw5kzYGxf2Rufw/An0dV79TsqqiA1tOkz25+TYnys5
	 I0Ju56LlNTbp/2m5ZrqR0b5vS4RILAfCXX0zLnCaFNlB6FsJlYFfrSOS7DOvRziOCv
	 6Mqq+oR1F5GyPi2GWyKMtK3716r9GiJFYpvt8VOMeC/QVEiRhiTMg2T9aqfdizRlJY
	 0VduELBftTDUAtXaLTzOYSsSPNGwuckollAFcij9/wqdOiGIx7B/iLVB6F/fPYbnPG
	 vxg0KggxCLswQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhqk5A1BzHOr; Wed,  7 Dec 2022 16:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78167408A3;
	Wed,  7 Dec 2022 16:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78167408A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE26D1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 02:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C45381E6D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 02:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C45381E6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FltzeP98Hc_g for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 02:20:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2FD281E5A
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2FD281E5A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 02:20:17 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-05 (Coremail) with SMTP id zQCowADX+M1S+I9j2FxvBQ--.64308S2;
 Wed, 07 Dec 2022 10:20:03 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jiri@resnulli.us
Date: Wed,  7 Dec 2022 10:20:00 +0800
Message-Id: <20221207022000.44043-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowADX+M1S+I9j2FxvBQ--.64308S2
X-Coremail-Antispam: 1UD129KBjvdXoWruF13tr17Jw1UKFy8Gr1DAwb_yoWDurcEkF
 yDZrn7X3W7Jr1xZ3WayrnrWFn3urW8ZFyIga4Yqr4ay34DJrZIyFnFqry3A3yIgF409Fnx
 JryDAa4Y9rnxujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbVAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVW8Jr
 0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
 6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
 0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E
 8cxan2IY04v7MxkIecxEwVAFwVW8JwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbV
 WUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF
 67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
 IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF
 0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxh
 VjvjDU0xZFpf9x0JUDDGOUUUUU=
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Wed, 07 Dec 2022 16:42:35 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add check for kzalloc
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
Cc: intel-wired-lan@lists.osuosl.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 06, 2022 at 05:47:01PM +0800, Jiri Pirko wrote:
>>As kzalloc may fail and return NULL pointer,
>>it should be better to check the return value
>>in order to avoid the NULL pointer dereference.
> 
> Okay, so? Be imperative to the code base, tell it what to do in your
> patch description.

OK, I will describe the changes by the patch in more details.

>>@@ -462,6 +462,17 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
>> 					       GFP_KERNEL);
>> 		pf->gnss_serial[i] = NULL;
>> 
>>+		if (!pf->gnss_tty_port[i]) {
>>+			for (j = 0; j < i; j++) {
>>+				tty_port_destroy(pf->gnss_tty_port[j]);
> 
> You are destroying port which you didn't call (pf->gnss_tty_port[i])
> for. Also, you are introducing a code duplication here with the error
> path couple of lines below. Please convert this to goto-label error
> path so the cleanup code is shared.

I will convert this to goto-label in v2.
But I have a question that the j is from 0 to (i - 1), and therefore only
the initialized port will be destroyed.
Is there any wrong?

Thanks,
Jiang

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
