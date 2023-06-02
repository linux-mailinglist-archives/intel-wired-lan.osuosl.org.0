Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40CA7205D0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:20:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62AE4403F8;
	Fri,  2 Jun 2023 15:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62AE4403F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719213;
	bh=jVDKHlBqVzOtZLbPrB+lgsotbV+1mrHs+CKsR+lDfuY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3dA0lVFIrvVImwMExW++GIknQtBasyBfEtG1lB3hSzPZdGpsNeApV9Z5pEXf8iSpL
	 1Cd0hpAF6B7VTvAa5xX0tFThcsS1I0UtHmrUHrpE6sbFb673bsJFyD5AzDo3WuYsV1
	 XlPL4gGTpkXzGXiuClfu1y1cBcp0ONo4vfwjnHDEp5sxw6pH6SnCvNqWc6GVi5NirA
	 /R8KWAN/JORdVQSJKssbe5bHtB57X8/VS7cWQtl0NOpfuKYQP6ZvTazspnw0RLiGip
	 695cyqYA7oiAxZcBx0BtDf44WckSZU06iNp7tEoFVicoL2Um9SEjqFa8FU7zkx1tRX
	 NvatIijKws1rA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJknq3GCAJ5h; Fri,  2 Jun 2023 15:20:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D91241866;
	Fri,  2 Jun 2023 15:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D91241866
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 298D21BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 11:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED7A440A55
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 11:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED7A440A55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVg3DZKVN3hG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 11:48:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91ED7403C4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91ED7403C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 11:48:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358279731"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="358279731"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 04:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="707819513"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="707819513"
Received: from rspatil-mobl3.gar.corp.intel.com (HELO
 ijarvine-MOBL2.ger.corp.intel.com) ([10.251.208.112])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 04:48:44 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  2 Jun 2023 14:47:45 +0300
Message-Id: <20230602114751.19671-9-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230602114751.19671-1-ilpo.jarvinen@linux.intel.com>
References: <20230602114751.19671-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 02 Jun 2023 15:19:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685706531; x=1717242531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jGXAxasqLUJNCCsewqKuozH1mOZUvPCSOeFXiURbrcI=;
 b=PCMuZbtVd5rDdlRR4qozScmjCBUl7ylOG6XyPSAC83py4aO1foM29BFl
 beGNhPzVRZ7VdVDPP/8im/e+vnj2bv6SN2KPzRb1L7zeSFS8LngbAnfZK
 JFS332heSB30PG3MCMlqANwYnDrCbYIvcR5JkeqTA8+b7/YCLDfEFlqvN
 +zuQ8q24tNjUOQFfxYE0D51i4Z2sxevsEOd174DObM9NXqA52UwvbsECs
 oqDGz0KEXmTBsu0xAqnGacMnoZgQYBVIMGZZ8UhhVEZ+VjBavHJDORmtX
 u4CrdqzuYSUSkjty1QgEztC9D4lO8OlWimOZQTYYmDbsGkbHMwwEm3hi2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PCMuZbtV
Subject: [Intel-wired-lan] [RFC PATCH v1 08/13] e1000e: Remove unreliable
 pci_disable_link_state{, _locked}() workaround
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGFuZCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlX2xvY2tl
ZCgpIHdlcmUgbWFkZQpyZWxpYWJsZSByZWdhcmRsZXNzIG9mIEFTUE0gQ09ORklHIGFuZCBPUyBi
ZWluZyBkaXNhbGxvd2VkIHRvIGNoYW5nZQpBU1BNIHN0YXRlcyB0byBhbGxvdyBkcml2ZXJzIHRv
IHJlbHkgb24gdGhlbSB3b3JraW5nLgoKUmVtb3ZlIGRyaXZlciB3b3JraW5nIGFyb3VuZCB1bnJl
bGlhYmxlCnBjaV9kaXNhYmxlX2xpbmtfc3RhdGV7LF9sb2NrZWR9KCkgZnJvbSBlMTAwMGUgZHJp
dmVyIGFuZCBqdXN0IGNhbGwgdGhlCmZ1bmN0aW9ucyBkaXJlY3RseS4KClNpZ25lZC1vZmYtYnk6
IElscG8gSsOkcnZpbmVuIDxpbHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCA3NyArLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3NSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKaW5kZXggYmQ3
ZWY1OWIxZjJlLi5kNjgwZDA1OWE2ODEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9uZXRkZXYuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvbmV0ZGV2LmMKQEAgLTY3NjMsNzkgKzY3NjMsNiBAQCBzdGF0aWMgaW50IF9fZTEwMDBf
c2h1dGRvd24oc3RydWN0IHBjaV9kZXYgKnBkZXYsIGJvb2wgcnVudGltZSkKIAlyZXR1cm4gMDsK
IH0KIAotLyoqCi0gKiBfX2UxMDAwZV9kaXNhYmxlX2FzcG0gLSBEaXNhYmxlIEFTUE0gc3RhdGVz
Ci0gKiBAcGRldjogcG9pbnRlciB0byBQQ0kgZGV2aWNlIHN0cnVjdAotICogQHN0YXRlOiBiaXQt
bWFzayBvZiBBU1BNIHN0YXRlcyB0byBkaXNhYmxlCi0gKiBAbG9ja2VkOiBpbmRpY2F0aW9uIGlm
IHRoaXMgY29udGV4dCBob2xkcyBwY2lfYnVzX3NlbSBsb2NrZWQuCi0gKgotICogU29tZSBkZXZp
Y2VzICptdXN0KiBoYXZlIGNlcnRhaW4gQVNQTSBzdGF0ZXMgZGlzYWJsZWQgcGVyIGhhcmR3YXJl
IGVycmF0YS4KLSAqKi8KLXN0YXRpYyB2b2lkIF9fZTEwMDBlX2Rpc2FibGVfYXNwbShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwgdTE2IHN0YXRlLCBpbnQgbG9ja2VkKQotewotCXN0cnVjdCBwY2lfZGV2
ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7Ci0JdTE2IGFzcG1fZGlzX21hc2sgPSAwOwotCXUx
NiBwZGV2X2FzcG1jLCBwYXJlbnRfYXNwbWM7Ci0KLQlzd2l0Y2ggKHN0YXRlKSB7Ci0JY2FzZSBQ
Q0lFX0xJTktfU1RBVEVfTDBTOgotCWNhc2UgUENJRV9MSU5LX1NUQVRFX0wwUyB8IFBDSUVfTElO
S19TVEFURV9MMToKLQkJYXNwbV9kaXNfbWFzayB8PSBQQ0lfRVhQX0xOS0NUTF9BU1BNX0wwUzsK
LQkJZmFsbHRocm91Z2g7IC8qIGNhbid0IGhhdmUgTDEgd2l0aG91dCBMMHMgKi8KLQljYXNlIFBD
SUVfTElOS19TVEFURV9MMToKLQkJYXNwbV9kaXNfbWFzayB8PSBQQ0lfRVhQX0xOS0NUTF9BU1BN
X0wxOwotCQlicmVhazsKLQlkZWZhdWx0OgotCQlyZXR1cm47Ci0JfQotCi0JcGNpZV9jYXBhYmls
aXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQX0xOS0NUTCwgJnBkZXZfYXNwbWMpOwotCXBkZXZf
YXNwbWMgJj0gUENJX0VYUF9MTktDVExfQVNQTUM7Ci0KLQlpZiAocGFyZW50KSB7Ci0JCXBjaWVf
Y2FwYWJpbGl0eV9yZWFkX3dvcmQocGFyZW50LCBQQ0lfRVhQX0xOS0NUTCwKLQkJCQkJICAmcGFy
ZW50X2FzcG1jKTsKLQkJcGFyZW50X2FzcG1jICY9IFBDSV9FWFBfTE5LQ1RMX0FTUE1DOwotCX0K
LQotCS8qIE5vdGhpbmcgdG8gZG8gaWYgdGhlIEFTUE0gc3RhdGVzIHRvIGJlIGRpc2FibGVkIGFs
cmVhZHkgYXJlICovCi0JaWYgKCEocGRldl9hc3BtYyAmIGFzcG1fZGlzX21hc2spICYmCi0JICAg
ICghcGFyZW50IHx8ICEocGFyZW50X2FzcG1jICYgYXNwbV9kaXNfbWFzaykpKQotCQlyZXR1cm47
Ci0KLQlkZXZfaW5mbygmcGRldi0+ZGV2LCAiRGlzYWJsaW5nIEFTUE0gJXMgJXNcbiIsCi0JCSAo
YXNwbV9kaXNfbWFzayAmIHBkZXZfYXNwbWMgJiBQQ0lfRVhQX0xOS0NUTF9BU1BNX0wwUykgPwot
CQkgIkwwcyIgOiAiIiwKLQkJIChhc3BtX2Rpc19tYXNrICYgcGRldl9hc3BtYyAmIFBDSV9FWFBf
TE5LQ1RMX0FTUE1fTDEpID8KLQkJICJMMSIgOiAiIik7Ci0KLSNpZmRlZiBDT05GSUdfUENJRUFT
UE0KLQlpZiAobG9ja2VkKQotCQlwY2lfZGlzYWJsZV9saW5rX3N0YXRlX2xvY2tlZChwZGV2LCBz
dGF0ZSk7Ci0JZWxzZQotCQlwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYsIHN0YXRlKTsKLQot
CS8qIERvdWJsZS1jaGVjayBBU1BNIGNvbnRyb2wuICBJZiBub3QgZGlzYWJsZWQgYnkgdGhlIGFi
b3ZlLCB0aGUKLQkgKiBCSU9TIGlzIHByZXZlbnRpbmcgdGhhdCBmcm9tIGhhcHBlbmluZyAob3Ig
Q09ORklHX1BDSUVBU1BNIGlzCi0JICogbm90IGVuYWJsZWQpOyBvdmVycmlkZSBieSB3cml0aW5n
IFBDSSBjb25maWcgc3BhY2UgZGlyZWN0bHkuCi0JICovCi0JcGNpZV9jYXBhYmlsaXR5X3JlYWRf
d29yZChwZGV2LCBQQ0lfRVhQX0xOS0NUTCwgJnBkZXZfYXNwbWMpOwotCXBkZXZfYXNwbWMgJj0g
UENJX0VYUF9MTktDVExfQVNQTUM7Ci0KLQlpZiAoIShhc3BtX2Rpc19tYXNrICYgcGRldl9hc3Bt
YykpCi0JCXJldHVybjsKLSNlbmRpZgotCi0JLyogQm90aCBkZXZpY2UgYW5kIHBhcmVudCBzaG91
bGQgaGF2ZSB0aGUgc2FtZSBBU1BNIHNldHRpbmcuCi0JICogRGlzYWJsZSBBU1BNIGluIGRvd25z
dHJlYW0gY29tcG9uZW50IGZpcnN0IGFuZCB0aGVuIHVwc3RyZWFtLgotCSAqLwotCXBjaWVfY2Fw
YWJpbGl0eV9jbGVhcl93b3JkKHBkZXYsIFBDSV9FWFBfTE5LQ1RMLCBhc3BtX2Rpc19tYXNrKTsK
LQotCWlmIChwYXJlbnQpCi0JCXBjaWVfY2FwYWJpbGl0eV9jbGVhcl93b3JkKHBhcmVudCwgUENJ
X0VYUF9MTktDVEwsCi0JCQkJCSAgIGFzcG1fZGlzX21hc2spOwotfQotCiAvKioKICAqIGUxMDAw
ZV9kaXNhYmxlX2FzcG0gLSBEaXNhYmxlIEFTUE0gc3RhdGVzLgogICogQHBkZXY6IHBvaW50ZXIg
dG8gUENJIGRldmljZSBzdHJ1Y3QKQEAgLTY4NDYsNyArNjc3Myw3IEBAIHN0YXRpYyB2b2lkIF9f
ZTEwMDBlX2Rpc2FibGVfYXNwbShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgdTE2IHN0YXRlLCBpbnQg
bG9ja2VkKQogICoqLwogc3RhdGljIHZvaWQgZTEwMDBlX2Rpc2FibGVfYXNwbShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwgdTE2IHN0YXRlKQogewotCV9fZTEwMDBlX2Rpc2FibGVfYXNwbShwZGV2LCBz
dGF0ZSwgMCk7CisJcGNpX2Rpc2FibGVfbGlua19zdGF0ZShwZGV2LCBzdGF0ZSk7CiB9CiAKIC8q
KgpAQCAtNjg1OSw3ICs2Nzg2LDcgQEAgc3RhdGljIHZvaWQgZTEwMDBlX2Rpc2FibGVfYXNwbShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgdTE2IHN0YXRlKQogICoqLwogc3RhdGljIHZvaWQgZTEwMDBl
X2Rpc2FibGVfYXNwbV9sb2NrZWQoc3RydWN0IHBjaV9kZXYgKnBkZXYsIHUxNiBzdGF0ZSkKIHsK
LQlfX2UxMDAwZV9kaXNhYmxlX2FzcG0ocGRldiwgc3RhdGUsIDEpOworCXBjaV9kaXNhYmxlX2xp
bmtfc3RhdGVfbG9ja2VkKHBkZXYsIHN0YXRlKTsKIH0KIAogc3RhdGljIGludCBlMTAwMGVfcG1f
dGhhdyhzdHJ1Y3QgZGV2aWNlICpkZXYpCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
