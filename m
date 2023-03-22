Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BDC6C4FF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA4B983F6A;
	Wed, 22 Mar 2023 16:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA4B983F6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679501037;
	bh=4fZATmpFQpglNmQsja6G8NxkCjI7CLCy1uot3eITUvs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ayNCqCtk63BRuuufIe+ufE0M3wV8nJ3IdUYqk/6U/WtRT+RNvDet016NBe2hgioYw
	 CT6itYRQZWeJy8Q7rNyT/4mssf30fUO8wjiqEbjg4K4R4UxQK/q1w24+jv+pccbOjT
	 1d5WJPDBxYTWBz/ZoJtEriXEokwUkhCN/5QMuO333zqLx6FwEnVTsMP7YvLGvS9OBy
	 rbFagNZFUI+T2d6xCcEWmSBQMLUkJ7xhGEHhx7FHS2mv3GUAqEj7yjLax5TZ+R8wV/
	 DPUjolJh4sG2uGqlzOWtIFZrEby6wNcl0U8ixszybhC4NU2/Dwl9p+IT5qdiYQ5l1R
	 xANeen9MDUFXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id am-kN1gydV_l; Wed, 22 Mar 2023 16:03:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDB748229A;
	Wed, 22 Mar 2023 16:03:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDB748229A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68EFA1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BBA140279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:03:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BBA140279
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZZxszoGUucx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:03:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D18640238
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D18640238
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:03:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-I_iVC6c3ONe9XNyQqPFpYA-1; Wed, 22 Mar 2023 12:03:46 -0400
X-MC-Unique: I_iVC6c3ONe9XNyQqPFpYA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 656D4805575;
 Wed, 22 Mar 2023 16:03:46 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 834021410F1E;
 Wed, 22 Mar 2023 16:03:45 +0000 (UTC)
Date: Wed, 22 Mar 2023 17:03:44 +0100
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <ZBsm4GLfzyfQsHJ1@localhost>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228182707.iajakkix4mcer62y@skbuf> <871qlxr0rr.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <871qlxr0rr.fsf@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679501030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+bhV2iDB+kapB9Rd2CdlcffiS1L4CPF4HR5h8I8AF7c=;
 b=HpVSXhbU6Ldax73QAUzzLXONeu5IVd629XGfSG04nYtvvbdSMp6MtjfxWVyu+0ZMygWpbx
 WsYTs1FjhqaJs8CkyRx6KfmxvvBnPYYVirMvjIqTU4TVSFRSOxTCXnUeWcMcUu71ATBFRa
 MHVPTGZXqmClKvRw99CUwmBYgkYkkBU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HpVSXhbU
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support
 for multiple TX tstamp requests
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
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, kurt@linutronix.de,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 09, 2023 at 02:57:28PM -0800, Vinicius Costa Gomes wrote:
> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
> > If the application never generates multiple requests in flight, then
> > this evaluation is only testing patch 3 (and patches 1 and 2 only to the
> > extent that they don't cause a regression), right?
> >
> 
> That's right. I was more interested in not causing a regression. I could
> run the same test with two (or more) applications and give some numbers,
> but those numbers couldn't be directly compared with the current version
> of the code.
> 
> But good idea. I will change the application to send "batches" of
> packets, so I can configure the number of "in flight" requests.

If you wanted to see the impact on performance and accuracy of
timestamps at the same time, you could use chrony as an NTP server and
generate load with ntpperf. The server can be started as

# chronyd -d local allow 'hwtimestamp eth0' 'clientloglimit 10000000'

ntpperf needs to be started with the -I -H -o options to measure
the difference between server HW TX timestamp and client HW RX
timestamp. The PHC used by ntpperf needs to be synchronized, ideally
via a separate PHC (e.g. by ptp4l+phc2sys).

If the multi-timestamp patches work well, I'd expect the stddev
reported by ntpperf to stay low at a higher rate. See
https://github.com/mlichvar/ntpperf for some examples.

-- 
Miroslav Lichvar

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
