Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD850B1630C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 16:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7041E40F8B;
	Wed, 30 Jul 2025 14:45:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LtqCskeccsBf; Wed, 30 Jul 2025 14:45:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D555040F78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753886735;
	bh=B5Jm1I5ZVNzFM2GbtPesvTUdsdvn+BhVHySRQ8Ex2NI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AdoN9lMTaRfaN+zfz/idEp7KZP5/zLVuDlL1hs5kLib2EEzu+SJ4Eje2rJVBqMwNJ
	 BaWzGdsAegs1O+sfd3X58kAjLJBmEOlbc+4UeUDZBckdiVBYH8mDJhP+4CtOEOWzEv
	 203l/q2gs8+kO0kIlxXkYjerz7T+h/j51nTkvutpb8sOM2n2ssy2CfXithU9QnHVKR
	 OVYUlUmvWXCPkAK3rXJ8uTSrJIQJYaMd+R5UFvyGyx8T31eoUWct7+XRY6RQqmLTK0
	 eHKBW8Vwf4h24TUe/YsKPBsBoTAj7hF5PrsrMt3lg3mAckh8UctRKkFX2HqpDPhRtJ
	 x9a8b4ae4D5yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D555040F78;
	Wed, 30 Jul 2025 14:45:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C022016B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1D9683B7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:45:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXXyZ9KP-WiO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 14:45:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 128138226D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 128138226D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 128138226D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:45:32 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-665-ECXW_u5hO_emNiKKbEKfPw-1; Wed,
 30 Jul 2025 10:45:28 -0400
X-MC-Unique: ECXW_u5hO_emNiKKbEKfPw-1
X-Mimecast-MFC-AGG-ID: ECXW_u5hO_emNiKKbEKfPw_1753886726
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9624D1800873; Wed, 30 Jul 2025 14:45:25 +0000 (UTC)
Received: from [10.45.226.74] (unknown [10.45.226.74])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5131C1800D88; Wed, 30 Jul 2025 14:45:19 +0000 (UTC)
Message-ID: <6b8281b3-a438-4b3e-a8e7-d5043416d421@redhat.com>
Date: Wed, 30 Jul 2025 16:45:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me,
 almasrymina@google.com, asml.silence@gmail.com, leitao@debian.org,
 kuniyu@google.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
 <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1753886732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B5Jm1I5ZVNzFM2GbtPesvTUdsdvn+BhVHySRQ8Ex2NI=;
 b=T6/98hR3JkjboiF95SNV142dfLpMoF4xy+y854bDu5kx9V5d57yzOB2tuXqt+mdg4d9Mjv
 qbBlOC8kx+kuM61diyOopIFutD4E1aeW/BIBWeZkSb4+Ii5j0PqY05LdXKiK9JsnEOiaxX
 +a1VV0fPLm8f7biHv8y3MZwJDYUng0A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=T6/98hR3
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

On 30. 07. 25 2:26 odp., Jiri Pirko wrote:
> Tue, Jul 29, 2025 at 12:45:28PM +0200, arkadiusz.kubalewski@intel.com wrote:
> 
> [...]
> 
>> User interface:
>> - Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
>> - Write "1" to switch to that clock source
> 
> I wonder, if someone invented a time machine and sent me back to 2005...
> 
> [...]
> 
+1
why do we have netlink based interfaces for configuration...?

Wouldn't be better to implement such thing to be configurable via ip
link or ethtool??

E.g.
ip link set eth0 tx-clk <clock_name>

--or--
ethtool --set-tx-clk/--show-tx-clk eth0 <clock_name>

Ivan

