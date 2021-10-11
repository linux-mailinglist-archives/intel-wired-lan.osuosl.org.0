Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFBA42995B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 00:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4C67404B3;
	Mon, 11 Oct 2021 22:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Kr6sSi8qO_F; Mon, 11 Oct 2021 22:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC00640491;
	Mon, 11 Oct 2021 22:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68A4F1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 573CA80E8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel-dk.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeBvqEBwdVlo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Oct 2021 22:09:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55B7280E79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:09:59 +0000 (UTC)
Received: by mail-io1-xd35.google.com with SMTP id q205so21478472iod.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 15:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ewhdJrewVq9UEL9ms3PbdhPQHnTnwYJKNVbu3hDDnIs=;
 b=IW0C+PtTLYAOsNNnPt1srFJ3vnwYp8cTzRFDW9PTdE6eywhNJQcbYesMh5ktmVfTdV
 4yVMv795uwYKZLgaGTvGWYeQYp1QiBqMLREhAZ4tRoDZqiqkDTjhBicTtyYrP1DmLsi5
 ByFeaz+GU8WtD6fpIOHGLYG0b7WeQN2R7A86CUJVF0g5Ua+WRf2INPoG7Dorf8fbBQgw
 Z7qPfas0rrOJkahgzWLVIq7KYdyAjlH/XBaAubUO8PkQcusrKMOTNcqIvz3LpuZBTeWI
 ZimtmOpIkQts7yJ/nSLZyROyf735KSOoUbpmc7VSYUTgizBitf9D4TchvtD29ILXSEKs
 733g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ewhdJrewVq9UEL9ms3PbdhPQHnTnwYJKNVbu3hDDnIs=;
 b=AdPnYgBhB9UL9i91R6PI+siHKkxNUfew277rRcwdJOBoWCicERMYPNkfydHRcLsLsK
 0hZQilf1Nm0HU5V4utuubwMmdRQ6orOtiAQBifoChXMoVhxjdZ8S2A3RIzBo62zIVcin
 VqX3TVV+2EOFIOptk5VYC9yGwkgyxQN5D2cPXTBmzkZug2V/j1rcr3AKaaVkXn4dinUe
 pCbMRA57uH7PfPB3fivuy5o1lmcxykMIyuOWcpEG8caeNFH9EquFB18VqfMSmLamtNni
 UeZvlLR2XvW5Zt6rL45U6YeYK8DRaiscDQ8KaAwoe5pWX9KBLUR6NPDBQYIFObVLHQrr
 Yd4w==
X-Gm-Message-State: AOAM530Ol61KhPhG5PtZVf7EVDVYR+F2S0w+4lo3Nsp9UOpyjYlcYuRU
 QMIjHLLeckntzKY/3dQi94iIoxaX2JsElw==
X-Google-Smtp-Source: ABdhPJxlfRyNFDKh8WUUfjOVdiWiy9UCbwOf95eYRbcSUppoG4u6/fi+RinFfsDmAl1Y9TI52Ln9uA==
X-Received: by 2002:a5d:8242:: with SMTP id n2mr21382606ioo.170.1633990197757; 
 Mon, 11 Oct 2021 15:09:57 -0700 (PDT)
Received: from [192.168.1.116] ([66.219.217.159])
 by smtp.gmail.com with ESMTPSA id k4sm4640029ilc.10.2021.10.11.15.09.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Oct 2021 15:09:57 -0700 (PDT)
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2757afa0-1b27-8480-0830-9638b2495a85@kernel.dk>
Date: Mon, 11 Oct 2021 16:09:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Mon, 11 Oct 2021 22:12:15 +0000
Subject: [Intel-wired-lan] Potential bio_vec networking/igb size dependency?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Been working on a change today that changes struct bio_vec, and it works
fine on the storage side. But when I boot the box with the change, I
can't ssh in. If I attempt to use networking on the box (eg to update
packages), it looks like the data is corrupt. Basic things work - I can
dhcp and get an IP and so on, but ssh in yields:

ssh -v box
[...]
debug1: Local version string SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.3
debug1: Remote protocol version 2.0, remote software version OpenSSH_8.2p1 Ubuntu-4ubuntu0.3
debug1: match: OpenSSH_8.2p1 Ubuntu-4ubuntu0.3 pat OpenSSH* compat 0x04000000
debug1: Authenticating to box as 'axboe'
debug1: SSH2_MSG_KEXINIT sent
debug1: SSH2_MSG_KEXINIT received
debug1: kex: algorithm: curve25519-sha256
debug1: kex: host key algorithm: ecdsa-sha2-nistp256
debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
Connection closed by 207.135.234.126 port 22

I've got a vm image that I boot on my laptop, and that seems to
work fine. Hence I'm thinking maybe it's an igb issue? But for the
life of me, I cannot figure out wtf it is. I've looked at the skb_frag_t
uses and nothing pops out at me.

Trivial to reproduce, just add the below patch.

diff --git a/include/linux/bvec.h b/include/linux/bvec.h
index 0e9bdd42dafb..e61967fb4643 100644
--- a/include/linux/bvec.h
+++ b/include/linux/bvec.h
@@ -33,6 +33,7 @@ struct bio_vec {
 	struct page	*bv_page;
 	unsigned int	bv_len;
 	unsigned int	bv_offset;
+	unsigned long	foo;
 };
 
 struct bvec_iter {

-- 
Jens Axboe

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
