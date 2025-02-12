Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55118A325E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 13:33:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83A94417E5;
	Wed, 12 Feb 2025 12:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gErXHfZmKOTa; Wed, 12 Feb 2025 12:33:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E5F2417E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739363599;
	bh=bq+kZT4EFuu0WSaKGAKZWKMskYC7otNqha7evbk2r9I=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sO092fAYgKmDOHbzNtMdNfEngcwsyJNL8ZfLQnm72zmzoYfJRbYSvqHJhopekS8A7
	 JEivvl5xeShJwMkQP7+I/TMH6RU8JT3hGl8smwEomZp54qauWfegERPO6c2BYvvQ2d
	 Fhj4nrz2tKsKIh1UfyZ8smFMUVKmH6ci2vM4iKZ33pKKyUIdqLzkO8I7qO0e6LsFPh
	 CNREZrDu6N0LArvwj0ds7l3m5/zzLBg+48q1QQsOOkfwLyY3ZGCsT3BdLbv1xN/1qh
	 u7rhlzLZs7B5RBRzsuGPegJ42/tbcwBjsZrCbeG2uhCK45jeaBpkcXOs5Wij4ljsu7
	 W8JBpvwIvCfCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E5F2417E8;
	Wed, 12 Feb 2025 12:33:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 49AF1C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DCFB610AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:33:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9NqpBPCg5ecM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 12:33:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 34D58606C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34D58606C4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34D58606C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:33:15 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-370-SGr5S8L4PlelEFv07oODsA-1; Wed, 12 Feb 2025 07:33:13 -0500
X-MC-Unique: SGr5S8L4PlelEFv07oODsA-1
X-Mimecast-MFC-AGG-ID: SGr5S8L4PlelEFv07oODsA
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-ab7f6f6cd96so51764566b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 04:33:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739363592; x=1739968392;
 h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bq+kZT4EFuu0WSaKGAKZWKMskYC7otNqha7evbk2r9I=;
 b=NktKgC4vKPv9d0WqaNb/fKpGhWC5THXNUuVoVMppam1eJa57newb7Ge8A7Z4cxDr/J
 oeB8Gkq0u5xBmSIH8ItRMQpoZJcGYvVHBKHt+AXkbDT88tfrZgDpi+B9LTuM5zxEkSAW
 fMF5jhJJWgSgnyK4o1/O8gIzGb01fVeNW/2FHrkgaN1shiIcJKu6XNbSBP96keb6A1tl
 QV3AE4Bxb0T6s7/DI110+T9w+EamWTLMJFbGxyco1yyyHEBq5+1BrtnN7EdRqU56xolx
 YiDdeqR/aZvJe/Rbl9Xgi1BTuQP7tLYAcYBMCASRwwnj33hHsmsTjSJYIOtExA8UVRCE
 EUzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5S/ahXU7+MGlXKwfb4BY7bCis4JsCFFPbRibJ1sRdbvcdWDLTkuA72sk/m3qaXVRsPN4ESRsCDGfdEvTxvVQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YydV3IKm7QZVQeRAzZ9QHHXeMLtfNLjltGUllgKrCdelYcnyjaV
 4y17VW8xoSe06tueJ0okC749nWrXNPs9PmHQgswbzndzIgwa9sCWwqsp9qZ4Cylj5ERH1FjXpep
 ha1OEdyqFkbjlBtD2UrSAOfg2NwWC4XmfKV6UxArvt1hKmgS3ahNVOqEHK01meLN/Qpw=
X-Gm-Gg: ASbGnctU+o9i9GQ+ful+x2hoVj+HcJSYfW1j552TS6yEUEQwa+1b4GzuGGvGEK8lNvF
 2gfYYeMbKqs0op1Xi6uuoM/kvN75GWFE1z6bPyYFDEadT4XzSWK852s/dJIsJEshN0Fc2/I3duA
 hG4yyiWMOut61mS7Cnff0sXoFpIzq9+FfWcwXguP7CBj0EOGAUXyNsMck1fC0abz629D93zSd3b
 yWq5NWOgc9lBwAFc2x6WI1SGhOAA3mZbUjkQ77ZoN2qhuzsWrE9PT25/+c9LOQN7zI4r4Oh9VG6
 mw==
X-Received: by 2002:a17:907:728f:b0:ab7:b072:8481 with SMTP id
 a640c23a62f3a-ab7f38745b8mr249122166b.45.1739363592267; 
 Wed, 12 Feb 2025 04:33:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaEi4/FX10BdAWCbxkUVyuaMY7mEVoDH0yBTsxecDLYiaQqIPiFTwah+9QMZNjOq04nMflVQ==
X-Received: by 2002:a17:907:728f:b0:ab7:b072:8481 with SMTP id
 a640c23a62f3a-ab7f38745b8mr249118366b.45.1739363591806; 
 Wed, 12 Feb 2025 04:33:11 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7cc737d81sm509138566b.176.2025.02.12.04.33.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 04:33:10 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B064C184FE5F; Wed, 12 Feb 2025 13:33:09 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Chandan Kumar Rout
 <chandanx.rout@intel.com>
Cc: Yue Haibing <yuehaibing@huawei.com>, Simon Horman <horms@kernel.org>,
 Samuel Dobron <sdobron@redhat.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 12 Feb 2025 13:33:09 +0100
Message-ID: <87mserpcl6.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Jh5W9yHH4bPZaQ6jHxrp43wXDc3yCcU9Uc8_sH2SgMY_1739363592
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1739363594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=bq+kZT4EFuu0WSaKGAKZWKMskYC7otNqha7evbk2r9I=;
 b=dmdbK4Ho6RfQZFPc3w2PpSAmcn7nA5p6IQrd/tpkxroa5zwHQ9HFeaGAZ9TmfM9FEVGTcR
 1wJKYAm3yANr1462qPcClFmWrsJyjtEZWH05HzlR33DIchO99mP0abCl7CHdq91336x/fa
 cu4b03/uifTupFSNz//D2nM99HSSARc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dmdbK4Ho
Subject: [Intel-wired-lan] [ixgbe] Crash when running an XDP program
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

Hi folks,

Our LNST testing team uncovered a crash in ixgbe when running an XDP
program, see this report:
https://bugzilla.redhat.com/show_bug.cgi?id=2343204

From looking at the code, it seems to me that the culprit is this commit:

c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")

after that commit, the IS_ERR(skb) check in ixgbe_put_rx_buffer() no
longer triggers, and that function tries to dereference a NULL skb
pointer after an XDP program dropped the frame.

Could you please fix this?

And, erm, given the number of reviewed-by and tested-by tags in the
commit above, I'm guessing you don't have any XDP tests in your testing
regimen? Any chance you could add that? :)

Thanks!

-Toke

