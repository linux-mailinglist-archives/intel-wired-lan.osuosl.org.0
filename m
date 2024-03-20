Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BB2881A42
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 00:51:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A21F5820DA;
	Wed, 20 Mar 2024 23:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBfEj5ISrD-j; Wed, 20 Mar 2024 23:51:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4FE3820C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710978699;
	bh=HnoTVvqM/q4duhPt67O4dfckh1Xukoog1YlRLx4IDtk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S/g50iR+eTA6BxE4ouaCGghqm9/ssrF6nl8rMQ/Qa8PiblCxjszptxn5JUlutXw8L
	 9Nn0PHxblNt5AaASeIhXtaowxaW8bOJDJ5QgHdmHhA+YNYtDcfbJH2w8Y/EnLHEZws
	 tmqx4KkjLjaIfdDWT/i/7BjwPtXFOL19hfPuPu+pzkbRWlrK2CPqyOV5ZPNrJJOGc+
	 J14F2hAcN7emXFWFwaSx4JgX7a1TSJR7llxsuT2ZP6D23uf9J+1AAXvefY9JkGvzAS
	 U/3JztAf652JDtsaa0fiTBBGBDcMoCF2rNs3gH1HH2PbRog2zVyfiWA3YAc4P/JDac
	 2oppoXQQyMJCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4FE3820C0;
	Wed, 20 Mar 2024 23:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3FBD1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F63F60659
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T3FlKv1ETkEQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 16:47:16 +0000 (UTC)
X-Greylist: delayed 809 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Mar 2024 16:47:16 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3F77E6060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F77E6060C
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1098:0:82:1000:0:2:1; helo=mx2.mythic-beasts.com;
 envelope-from=jic23@jic23.retrosnub.co.uk; receiver=<UNKNOWN> 
Received: from mx2.mythic-beasts.com (mx2.mythic-beasts.com
 [IPv6:2a00:1098:0:82:1000:0:2:1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F77E6060C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:47:16 +0000 (UTC)
Received: by mailhub-hex-d.mythic-beasts.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jic23@jic23.retrosnub.co.uk>)
 id 1rmyt8-00BNeD-Pz; Wed, 20 Mar 2024 16:34:18 +0000
Date: Wed, 20 Mar 2024 16:33:02 +0000
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
To: Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@linaro.org>
User-Agent: K-9 Mail for Android
In-Reply-To: <f1bdbed9-8549-3787-bd17-ecd62851e8a@inria.fr>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
 <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
 <f1bdbed9-8549-3787-bd17-ecd62851e8a@inria.fr>
Message-ID: <10F403F7-E8B7-48F0-90CF-3C8A8BEB10F2@jic23.retrosnub.co.uk>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BlackCat-Spam-Score: 0
X-Mailman-Approved-At: Wed, 20 Mar 2024 23:51:34 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jic23.retrosnub.co.uk
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 20 March 2024 07:32:17 GMT, Julia Lawall <julia=2Elawall@inria=2Efr> wr=
ote:
>
>
>On Wed, 20 Mar 2024, Dan Carpenter wrote:
>
>> On Tue, Mar 19, 2024 at 12:43:17PM -0700, Jakub Kicinski wrote:
>> > On Sat, 16 Mar 2024 12:44:40 +0300 Dan Carpenter wrote:
>> > > -	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
>> > > -	void *mac_buf __free(kfree);
>> > > +	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =3D NULL;
>> > > +	void *mac_buf __free(kfree) =3D NULL;
>> >
>> > This is just trading one kind of bug for another, and the __free()
>> > magic is at a cost of readability=2E
>> >
>> > I think we should ban the use of __free() in all of networking,
>> > until / unless it cleanly handles the NULL init case=2E
>>
>> Free handles the NULL init case, it doesn't handle the uninitialized
>> case=2E  I had previously argued that checkpatch should complain about
>> every __free() pointer if the declaration doesn't have an assignment=2E
>>
>> The =3D NULL assignment is unnecessary if the pointer is assigned to
>> something else before the first return, so this might cause "unused
>> assignment" warnings?  I don't know if there are any tools which
>> complain about that in that situation=2E  I think probably we should ju=
st
>> make that an exception and do the checkpatch thing because it's such a
>> simple rule to implement=2E
>
>My understanding from Jonathan Cameron was that Linus wants a NULL always=
,
>unless there is an initialization with the declaration=2E

I don't have thread to hand but Linus strongly preferred moving any declar=
ation using this to
 where it is assigned so that it was obvious that the allocator and freer =
match=2E

Not checked if that makes sense here though=20
>
>julia
