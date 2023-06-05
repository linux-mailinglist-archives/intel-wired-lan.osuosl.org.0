Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5796D723154
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 22:27:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E94BE8215A;
	Mon,  5 Jun 2023 20:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E94BE8215A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685996858;
	bh=ujHxfIykCLAfdGLrqmx2g4sD04tCTs+PbM1QGYem+l0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cWPA8k98XD6pCwq8CFE7BrZ7wZnqVSjBBEeq69NCCuxr3z1ie/2oUAdvX5dNXSKd/
	 vNZqie6eV/8KjqiNkWE9FsObUpbljwVOgYXkXkl0LAjig+FZ23xhx74JffXRX+Mn9P
	 vCS2zUxiMVRQhuAZw/EvSouPlT9x+BOkitxfW00ZqO5Z06V5Qn1uqGSqavdpS1LQzW
	 zS8wLeG241vvnN5LvWeQqa1/37dn1nvCU4+bX4WRlKe9Fviz+p9x8FA6+ZGsl7tsI4
	 IjZ384lSFDbSf2oLGF5kPqVG0O8sm8xs3Xdv1Ne1dOPKtvJz6dKV06eGr+BE/yVuk0
	 4CJJY3LI4T7Sw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qt5YuG4b3au4; Mon,  5 Jun 2023 20:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB71D81FC9;
	Mon,  5 Jun 2023 20:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB71D81FC9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C659C1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 20:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA3CF606ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 20:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA3CF606ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocPMdhGsLagC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 20:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2868560672
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2868560672
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 20:27:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0FC8F61E52;
 Mon,  5 Jun 2023 20:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60AF7C433D2;
 Mon,  5 Jun 2023 20:27:29 +0000 (UTC)
Date: Mon, 5 Jun 2023 13:27:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <20230605132728.022935ff@kernel.org>
In-Reply-To: <MW5PR11MB5811118836C780A1B0B4F9D6DD4DA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <MW5PR11MB5811118836C780A1B0B4F9D6DD4DA@MW5PR11MB5811.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1685996849;
 bh=i+PYEkJ06n1TcS7Wc1yTF0Ehkl8WlefWCxBby9xAljY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o4CDvVXXqDcSu2XUOZKombkbMvTRzMoR8LcbFyk7coCZZFKe1HeO6OR2EYuGWQzwq
 z3pVaWspr3is7fZ9g2kK/iy9kN30dpIqhGlyidiSdwk7ZogoQmiWJ3ZFz8iT7IW2l6
 aByYsMAKKSPAl7ri3YDeqW4WZtpUwEK24oCBtAFIEhSEdYJMQ3qbAIREm4T2tNneNS
 1Xa/Wv6xPwHkX9TgRBWLTsljEvbQ/6WCJRquVnLB+Wo+Xsy7H13/hHPBkkM4AaxwsV
 OoTriIAQhOWcqXxuIbetdFRwn1D0JdrgJXy/kQjVYT022h1LBK4OxBFqCKj3b+ZqUB
 eMbFzrADA2Gaw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o4CDvVXX
Subject: Re: [Intel-wired-lan] [PATCH net v2 00/10] Implement support for
 SRIOV + LAG
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCA1IEp1biAyMDIzIDE5OjEyOjU5ICswMDAwIEVydG1hbiwgRGF2aWQgTSB3cm90ZToK
PiBUaGlzIGdvdCBmYXQtZmluZ2VyZWQgc2VudC4gIEl0IHN0aWxsIG5lZWRlZCB0byBiZSByZS1i
YXNlZCBvbgo+IGN1cnJlbnQgdGlwLW9mLXRyZWUgYW5kIGlzIG1pc2xhYmVsZWQgYXMgbmV0IGlu
c3RlYWQgb2YgbmV0LW5leHQuCj4gCj4gV2lsbCByZXNlbmQgVjMgaW4gMjQgaG91cnMg4pi5Cj4g
Cj4gQWdhaW4sIHNvcnJ5IGZvciB0aGUgdGhyYXNoLgoKSSBmaWd1cmVkIC0gaWYgdGhlcmUncyBu
byBzdHJvbmcgcmVhc29uIEkgd291bGRuJ3QgcmVzZW5kLCB0aG8uClBlb3BsZSB3aG8gYXJlIGlu
dGVyZXN0ZWQgaW4gcmV2aWV3aW5nIGNhbiB3b3JrIG9uIHRoaXMgdmVyc2lvbi4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
