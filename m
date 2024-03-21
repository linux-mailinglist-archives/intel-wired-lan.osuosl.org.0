Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF6788557A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 09:16:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E99082061;
	Thu, 21 Mar 2024 08:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OPO7qEaYferU; Thu, 21 Mar 2024 08:16:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C89A082060
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711009016;
	bh=1nZmh/jwo6v3OqQ8SYcKAELLaS9OFz7pGZrI8EdfDco=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gVP+ZQo7811mH975N7Zwr9eBIpluSvhRNfIAW43zem92zpJlkhDwKfEN/81tH746l
	 BKfmchkE1tO3rkYC+lnRdPBwUO7r5h2ruosQlJLLcCLjMEU1l7HowKMgHBQpMjTlmW
	 TEtSlTeepjqGvqt5QEe+IhPEJXPatoasfqilGSmNs0oPYHeKEmJId286UXbWQn9EAq
	 RZxilpXlKC93MBHTrEuZtr4NBt/9Md5c3JOkQqUbsIjtHJNyT5posP4K893KWAWKV/
	 XkhihmLkRu8BhM97IajgGnBnFLH9v2hiU5fnOrpdLrYPbYZ+FkEXQhPC5iOTjoudef
	 WzLoyuvKpnu8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C89A082060;
	Thu, 21 Mar 2024 08:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 118221BF344
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 08:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08072409F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 08:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFSGytR0r15z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 08:16:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EEF9F409BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEF9F409BC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEF9F409BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 08:16:52 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-80-OiBPrs-5OmuMWVaRFoX0Vw-1; Thu, 21 Mar 2024 04:16:45 -0400
X-MC-Unique: OiBPrs-5OmuMWVaRFoX0Vw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC0CF85A58C;
 Thu, 21 Mar 2024 08:16:44 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.16.205])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE6C41C060A6;
 Thu, 21 Mar 2024 08:16:37 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 21 Mar 2024 13:46:24 +0530
Message-Id: <20240321081625.28671-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711009011;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1nZmh/jwo6v3OqQ8SYcKAELLaS9OFz7pGZrI8EdfDco=;
 b=S+ZzQJg+lR8ifMHC7BzO0XGafw45cS6R4GUkE2iYH66UcuAOecJT5BzqL4fQlpJVQiiShc
 YXqSbCfv1Rxpjq/MsdB48chxFJxA8KkGIbLIUVnMJJcimDfm7QtaWiL8/UxIGniW2jhsm+
 UrjPgsQUMeoC86BSuDOCFsLOpI9ZU0A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=S+ZzQJg+
Subject: [Intel-wired-lan] (no subject)
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, ksundara@redhat.com,
 michal.swiatkowski@linux.intel.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Maintainers,
    Thanks for the review and suggestions for my patch.
In this patch v6, I have used container_of() instead of
ice_get_vf_by_id(). Also since the ice_set_vf_fn_mac()
is a copy of the existing function ice_set_vf_mac(),
except for the parameters, I didn't absorb the review
comments on that. Please advise if the validation checks
needs to be modified.

v5 -> v6
--------
- Changed data type of vf_id to u16
- Used container_of(port, struct ice_vf, devlink_port) to
  get the vf instead of ice_get_vf_by_id()/ice_put_vf()

v4 -> v5
--------
- Cloned ice_set_vf_mac() to ice_set_vf_fn_mac() so that the
  parameter ice_pf is used instead of net_device of vf
- removed redundant error handling

v3 -> v4
--------
- Released the vf device by calling ice_put_vf()

v2 -> v3
--------
- Fill the extack message instead of dev_err()

v1 -> v2
--------
- called ice_set_vf_mac() directly from the devlink port function
  handlers.

RFC -> v1
---------
- Add the function handlers to set and get the HW address for the
  VF representor ports.

