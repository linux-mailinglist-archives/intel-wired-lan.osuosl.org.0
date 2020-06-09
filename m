Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 891E11F57FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 17:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FBB887268;
	Wed, 10 Jun 2020 15:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HoyFzGYLBk5Z; Wed, 10 Jun 2020 15:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9B568723B;
	Wed, 10 Jun 2020 15:39:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9901BF473
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 23:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C27887CD9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 23:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IM9zPY3zbtZB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 23:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E88E87AD5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 23:12:28 +0000 (UTC)
IronPort-SDR: vdDhMcROl1GIaS2C4GUN0Uxznn4GVhaZaiuBeXu1yy+36S5t5FIBJkPG+bXoELN+6AcdnZvWRY
 azHx7IiR63kQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 16:12:27 -0700
IronPort-SDR: P7x+ACzgXaegA9wnz5Hw+/nUSEPtNiQhNx+9OwWXiD6o6OhICrhBn4DjI/uKIkx30+1XC1Jy9u
 YbITJyKYDjeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,493,1583222400"; d="scan'208";a="259121486"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jun 2020 16:12:27 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Jun 2020 16:09:19 -0700
Message-Id: <20200609230919.64840-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Jun 2020 15:39:50 +0000
Subject: [Intel-wired-lan] [PATCH] ice: Add comms package file for Intel
 E800 series driver
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
Content-Type: multipart/mixed; boundary="===============9059128977197681606=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============9059128977197681606==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

The ice driver can, optionally, load different package files. Provide the
"comms" package as another option.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 LICENSE.ice_enhanced                       | 340 +++++++++++++++++++++
 WHENCE                                     |   4 +
 intel/ice/ddp-comms/ice_comms-1.3.16.0.pkg | Bin 0 -> 692484 bytes
 3 files changed, 344 insertions(+)
 create mode 100644 LICENSE.ice_enhanced
 create mode 100755 intel/ice/ddp-comms/ice_comms-1.3.16.0.pkg

diff --git a/LICENSE.ice_enhanced b/LICENSE.ice_enhanced
new file mode 100644
index 000000000000..f25f08170876
--- /dev/null
+++ b/LICENSE.ice_enhanced
@@ -0,0 +1,340 @@
+SOFTWARE LICENSE AGREEMENT
+
+DO NOT DOWNLOAD, INSTALL, ACCESS, COPY, OR USE ANY PORTION OF THE SOFTWARE UNTIL
+YOU HAVE READ AND ACCEPTED THE TERMS AND CONDITIONS OF THIS AGREEMENT. BY
+INSTALLING, COPYING, ACCESSING, OR USING THE SOFTWARE, YOU AGREE TO BE LEGALLY
+BOUND BY THE TERMS AND CONDITIONS OF THIS AGREEMENT. If You do not agree to be
+bound by, or the entity for whose benefit You act has not authorized You to
+accept, these terms and conditions, do not install, access, copy, or use the
+Software and destroy all copies of the Software in Your possession.
+
+This SOFTWARE LICENSE AGREEMENT (this "Agreement") is entered into between Intel
+Corporation, a Delaware corporation ("Intel") and You. "You" refers to you or
+your employer or other entity for whose benefit you act, as applicable. If you
+are agreeing to the terms and conditions of this Agreement on behalf of a
+company or other legal entity, you represent and warrant that you have the legal
+authority to bind that legal entity to the Agreement, in which case, "You" or
+"Your" shall be in reference to such entity. Intel and You are referred to
+herein individually as a "Party" or, together, as the "Parties".
+
+The Parties, in consideration of the mutual covenants contained in this
+Agreement, and for other good and valuable consideration, the receipt and
+sufficiency of which they acknowledge, and intending to be legally bound, agree
+as follows:
+
+1. PURPOSE. You seek to obtain, and Intel desires to provide You, under the
+terms of this Agreement, Software solely for Your efforts to develop and
+distribute products integrating Intel hardware and Intel software. "Software"
+refers to certain software or other collateral, including, but not limited to,
+related components, operating system, application program interfaces, device
+drivers, associated media, printed or electronic documentation and any updates,
+upgrades or releases thereto associated with Intel product(s), software or
+service(s). "Intel-based product" refers to an Intel(R) Ethernet 800 Series device
+operating in a platform using Intel(R) Xeon processors, Intel(R) Core processors
+and/or Intel(R) Atom processors that includes, incorporates, or implements Intel
+product(s), software or service(s).
+
+2. LIMITED LICENSE. Conditioned on Your compliance with the terms and conditions
+of this Agreement, Intel grants to You a limited, nonexclusive, nontransferable,
+revocable, worldwide, fully paid-up license during the term of this Agreement,
+without the right to sublicense, under Intel's copyrights (subject to any third
+party licensing requirements), to (i) internally prepare derivative works (as
+defined in 17 U.S.C. § 101) of the Software ("Derivatives"), if provided or
+otherwise made available by Intel in source code form, and reproduce the
+Software, including Derivatives, in each case only for Your own internal
+evaluation, testing, validation, and development of Intel-based products and any
+associated maintenance thereof; (ii) reproduce, display, and publicly perform an
+object code representation of the Software, including Your Derivatives, in each
+case only when integrated with and executed by an Intel-based product, subject
+to any third party licensing requirements; and (iii) distribute an object code
+representation of the Software, provided by Intel, or of any Derivatives created
+by You, solely as embedded in or for execution on an Intel-based product, and if
+to an end user, pursuant to a license agreement with terms and conditions at
+least as restrictive as those contained in the Intel End User Software License
+Agreement in Appendix A hereto.
+
+If You are not the final manufacturer or vendor of an Intel-based product
+incorporating or designed to incorporate the Software, You may transfer a copy
+of the Software, including any Derivatives (and related end user documentation)
+created by You to Your Original Equipment Manufacturer (OEM), Original Device
+Manufacturer (ODM), distributors, or system integration partners ("Your
+Partner") for use in accordance with the terms and conditions of this Agreement,
+provided Your Partner agrees to be fully bound by the terms hereof and provided
+that You will remain fully liable to Intel for the actions and inactions of
+Your Partner(s).
+
+3. LICENSE RESTRICTIONS. All right, title and interest in and to the Software
+and associated documentation are and will remain the exclusive property of
+Intel and its licensors or suppliers. Unless expressly permitted under the
+Agreement, You will not, and will not allow any third party to (i) use, copy,
+distribute, sell or offer to sell the Software or associated documentation;
+(ii) modify, adapt, enhance, disassemble, decompile, reverse engineer, change
+or create derivative works from the Software except and only to the extent as
+specifically required by mandatory applicable laws or any applicable third
+party license terms accompanying the Software; (iii) use or make the Software
+available for the use or benefit of third parties; or (iv) use the Software on
+Your products other than those that include the Intel hardware product(s),
+platform(s), or software identified in the Software; or (v) publish or provide
+any Software benchmark or comparison test results. You acknowledge that an
+essential basis of the bargain in this Agreement is that Intel grants You no
+licenses or other rights including, but not limited to, patent, copyright,
+trade secret, trademark, trade name, service mark or other intellectual
+property licenses or rights with respect to the Software and associated
+documentation, by implication, estoppel or otherwise, except for the licenses
+expressly granted above. You acknowledge there are significant uses of the
+Software in its original, unmodified and uncombined form. You may not remove
+any copyright notices from the Software.
+
+4. LICENSE TO FEEDBACK. This Agreement does not obligate You to provide Intel
+with materials, information, comments, suggestions, Your Derivatives or other
+communication regarding the features, functions, performance or use of the
+Software ("Feedback"). If any portion of the Software is provided or otherwise
+made available by Intel in source code form, to the extent You provide Intel
+with Feedback in a tangible form, You grant to Intel and its affiliates a
+non-exclusive, perpetual, sublicenseable, irrevocable, worldwide, royalty-free,
+fully paid-up and transferable license, to and under all of Your intellectual
+property rights, whether perfected or not, to publicly perform, publicly
+display, reproduce, use, make, have made, sell, offer for sale, distribute,
+import, create derivative works of and otherwise exploit any comments,
+suggestions, descriptions, ideas, Your Derivatives or other feedback regarding
+the Software provided by You or on Your behalf.
+
+5. OPEN SOURCE STATEMENT. The Software may include Open Source Software (OSS)
+licensed pursuant to OSS license agreement(s) identified in the OSS comments in
+the applicable source code file(s) or file header(s) provided with or otherwise
+associated with the Software. Neither You nor any OEM, ODM, customer, or
+distributor may subject any proprietary portion of the Software to any OSS
+license obligations including, without limitation, combining or distributing
+the Software with OSS in a manner that subjects Intel, the Software or any
+portion thereof to any OSS license obligation. Nothing in this Agreement limits
+any rights under, or grants rights that supersede, the terms of any applicable
+OSS license.
+
+6. THIRD PARTY SOFTWARE. Certain third party software provided with or within
+the Software may only be used (a) upon securing a license directly from the
+owner of the software or (b) in combination with hardware components purchased
+from such third party and (c) subject to further license limitations by the
+software owner. A listing of any such third party limitations is in one or more
+text files accompanying the Software. You acknowledge Intel is not providing
+You with a license to such third party software and further that it is Your
+responsibility to obtain appropriate licenses from such third parties directly.
+
+7. CONFIDENTIALITY. The terms and conditions of this Agreement, exchanged
+confidential information, as well as the Software are subject to the terms and
+conditions of the Non-Disclosure Agreement(s) or Intel Pre-Release Loan
+Agreement(s) (referred to herein collectively or individually as "NDA") entered
+into by and in force between Intel and You, and in any case no less
+confidentiality protection than You apply to Your information of similar
+sensitivity. If You would like to have a contractor perform work on Your behalf
+that requires any access to or use of Software, You must obtain a written
+confidentiality agreement from the contractor which contains terms and
+conditions with respect to access to or use of Software no less restrictive
+than those set forth in this Agreement, excluding any distribution rights and
+use for any other purpose, and You will remain fully liable to Intel for the
+actions and inactions of those contractors. You may not use Intel's name in any
+publications, advertisements, or other announcements without Intel's prior
+written consent.
+
+8. NO OBLIGATION; NO AGENCY. Intel may make changes to the Software, or items
+referenced therein, at any time without notice. Intel is not obligated to
+support, update, provide training for, or develop any further version of the
+Software or to grant any license thereto. No agency, franchise, partnership,
+jointventure, or employee-employer relationship is intended or created by this
+Agreement.
+
+9. EXCLUSION OF WARRANTIES. THE SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY
+EXPRESS OR IMPLIED WARRANTY OF ANY KIND INCLUDING WARRANTIES OF
+MERCHANTABILITY, NONINFRINGEMENT, OR FITNESS FOR A PARTICULAR PURPOSE. Intel
+does not warrant or assume responsibility for the accuracy or completeness of
+any information, text, graphics, links or other items within the Software.
+
+10. LIMITATION OF LIABILITY. IN NO EVENT WILL INTEL OR ITS AFFILIATES,
+LICENSORS OR SUPPLIERS (INCLUDING THEIR RESPECTIVE DIRECTORS, OFFICERS,
+EMPLOYEES, AND AGENTS) BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT
+LIMITATION, LOST PROFITS, BUSINESS INTERRUPTION, OR LOST DATA) ARISING OUT OF
+OR IN RELATION TO THIS AGREEMENT, INCLUDING THE USE OF OR INABILITY TO USE THE
+SOFTWARE, EVEN IF INTEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
+SOME JURISDICTIONS PROHIBIT EXCLUSION OR LIMITATION OF LIABILITY FOR IMPLIED
+WARRANTIES OR CONSEQUENTIAL OR INCIDENTAL DAMAGES, SO THE ABOVE LIMITATION MAY
+IN PART NOT APPLY TO YOU. THE SOFTWARE LICENSED HEREUNDER IS NOT DESIGNED OR
+INTENDED FOR USE IN ANY MEDICAL, LIFE SAVING OR LIFE SUSTAINING SYSTEMS,
+TRANSPORTATION SYSTEMS, NUCLEAR SYSTEMS, OR FOR ANY OTHER MISSION CRITICAL
+APPLICATION IN WHICH THE FAILURE OF THE SOFTWARE COULD LEAD TO PERSONAL INJURY
+OR DEATH. YOU MAY ALSO HAVE OTHER LEGAL RIGHTS THAT VARY FROM JURISDICTION TO
+JURISDICTION. THE LIMITED REMEDIES, WARRANTY DISCLAIMER AND LIMITED LIABILITY
+ARE FUNDAMENTAL ELEMENTS OF THE BASIS OF THE BARGAIN BETWEEN INTEL AND YOU. YOU
+ACKNOWLEDGE INTEL WOULD BE UNABLE TO PROVIDE THE SOFTWARE WITHOUT SUCH
+LIMITATIONS. YOU WILL INDEMNIFY AND HOLD INTEL AND ITS AFFILIATES, LICENSORS
+AND SUPPLIERS (INCLUDING THEIR RESPECTIVE DIRECTORS, OFFICERS, EMPLOYEES, AND
+AGENTS) HARMLESS AGAINST ALL CLAIMS, LIABILITIES, LOSSES, COSTS, DAMAGES, AND
+EXPENSES (INCLUDING REASONABLE ATTORNEY FEES), ARISING OUT OF, DIRECTLY OR
+INDIRECTLY, THE DISTRIBUTION OF THE SOFTWARE AND ANY CLAIM OF PRODUCT
+LIABILITY, PERSONAL INJURY OR DEATH ASSOCIATED WITH ANY UNINTENDED USE, EVEN IF
+SUCH CLAIM ALLEGES THAT INTEL OR AN INTEL AFFILIATE, LICENSORS OR SUPPLIER WAS
+NEGLIGENT REGARDING THE DESIGN OR MANUFACTURE OF THE SOFTWARE.
+
+11. TERMINATION AND SURVIVAL. Intel may terminate this Agreement for any reason
+with thirty (30) days' notice and immediately if You or someone acting on Your
+behalf or at Your behest violates any of its terms or conditions. Upon
+termination, You will immediately destroy and ensure the destruction of the
+Software or return all copies of the Software to Intel (including providing
+certification of such destruction or return back to Intel). Upon termination of
+this Agreement, all licenses granted to You hereunder terminate immediately.
+All Sections of this Agreement, except Section 2, will survive termination.
+
+12. GOVERNING LAW AND JURISDICTION. This Agreement and any dispute arising out
+of or relating to it will be governed by the laws of the U.S.A. and Delaware,
+without regard to conflict of laws principles. The Parties exclude the
+application of the United Nations Convention on Contracts for the International
+Sale of Goods (1980). The state and federal courts sitting in Delaware, U.S.A.
+will have exclusive jurisdiction over any dispute arising out of or relating to
+this Agreement. The Parties consent to personal jurisdiction and venue in those
+courts. A Party that obtains a judgment against the other Party in the courts
+identified in this section may enforce that judgment in any court that has
+jurisdiction over the Parties.
+
+13. EXPORT REGULATIONS/EXPORT CONTROL. You agree that neither You nor Your
+subsidiaries will export/re-export the Software, directly or indirectly, to any
+country for which the U.S. Department of Commerce or any other agency or
+department of the U.S. Government or the foreign government from where it is
+shipping requires an export license, or other governmental approval, without
+first obtaining any such required license or approval. In the event the
+Software is exported from the U.S.A. or re-exported from a foreign destination
+by You or Your subsidiary, You will ensure that the distribution and
+export/re-export or import of the Software complies with all laws, regulations,
+orders, or other restrictions of the U.S. Export Administration Regulations and
+the appropriate foreign government.
+
+14. GOVERNMENT RESTRICTED RIGHTS. The Software is a commercial item (as defined
+in 48 C.F.R. 2.101) consisting of commercial computer software and commercial
+computer software documentation (as those terms are used in 48 C.F.R. 12.212).
+Consistent with 48 C.F.R. 12.212 and 48 C.F.R 227.72021 through 227.7202-4,
+You will not provide the Software to the U.S. Government. Contractor or
+Manufacturer is Intel Corporation, 2200 Mission College Blvd., Santa Clara, CA
+95054.
+
+15. ASSIGNMENT. You may not delegate, assign or transfer this Agreement, the
+license(s) granted or any of Your rights or duties hereunder, expressly, by
+implication, by operation of law, or otherwise and any attempt to do so,
+without Intel's express prior written consent, will be null and void. Intel may
+assign, delegate and transfer this Agreement, and its rights and obligations
+hereunder, in its sole discretion.
+
+16. ENTIRE AGREEMENT; SEVERABILITY. The terms and conditions of this Agreement
+and any NDA with Intel constitute the entire agreement between the parties with
+respect to the subject matter hereof, and merge and supersede all prior or
+contemporaneous agreements, understandings, negotiations and discussions.
+Neither Party will be bound by any terms, conditions, definitions, warranties,
+understandings, or representations with respect to the subject matter hereof
+other than as expressly provided herein. In the event any provision of this
+Agreement is unenforceable or invalid under any applicable law or applicable
+court decision, such unenforceability or invalidity will not render this
+Agreement unenforceable or invalid as a whole, instead such provision will be
+changed and interpreted so as to best accomplish the objectives of such
+provision within legal limits.
+
+17. WAIVER. The failure of a Party to require performance by the other Party of
+any provision hereof will not affect the full right to require such performance
+at any time thereafter; nor will waiver by a Party of a breach of any provision
+hereof constitute a waiver of the provision itself.
+
+18. PRIVACY. YOUR PRIVACY RIGHTS ARE SET FORTH IN INTEL'S PRIVACY NOTICE, WHICH
+FORMS A PART OF THIS AGREEMENT. PLEASE REVIEW THE PRIVACY NOTICE AT
+HTTP://WWW.INTEL.COM/PRIVACY TO LEARN HOW INTEL COLLECTS, USES AND SHARES
+INFORMATION ABOUT YOU.
+
+
+APPENDIX A
+
+INTEL END USER SOFTWARE LICENSE AGREEMENT
+
+IMPORTANT - READ BEFORE COPYING, INSTALLING OR USING.
+
+THE FOLLOWING NOTICE, OR TERMS AND CONDITIONS SUBSTANTIALLY IDENTICAL IN NATURE
+AND EFFECT, MUST APPEAR IN THE DOCUMENTATION ASSOCIATED WITH THE INTEL-BASED
+PRODUCT INTO WHICH THE SOFTWARE IS INSTALLED. MINIMALLY, SUCH NOTICE MUST
+APPEAR IN THE USER GUIDE FOR THE PRODUCT. THE TERM "LICENSEE" IN THIS TEXT
+REFERS TO THE END USER OF THE PRODUCT.
+
+LICENSE. Licensee has a license under Intel's copyrights to reproduce Intel's
+Software only in its unmodified and binary form, (with the accompanying
+documentation, the "Software") for Licensee's personal use only, and not
+commercial use, in connection with Intel-based products for which the Software
+has been provided, subject to the following conditions:
+
+  (a) Licensee may not disclose, distribute or transfer any part of the
+      Software, and You agree to prevent unauthorized copying of the Software.
+  (b) Licensee may not reverse engineer, decompile, or disassemble the Software.
+  (c) Licensee may not sublicense the Software.
+  (d) The Software may contain the software and other intellectual property of
+      third party suppliers, some of which may be identified in, and licensed in
+	  accordance with, an enclosed license.txt file or other text or file.
+  (e) Intel has no obligation to provide any support, technical assistance or
+      updates for the Software.
+
+OWNERSHIP OF SOFTWARE AND COPYRIGHTS. Title to all copies of the Software
+remains with Intel or its licensors or suppliers. The Software is copyrighted
+and protected by the laws of the United States and other countries, and
+international treaty provisions. Licensee may not remove any copyright notices
+from the Software. Except as otherwise expressly provided above, Intel grants
+no express or implied right under Intel patents, copyrights, trademarks, or
+other intellectual property rights. Transfer of the license terminates
+Licensee's right to use the Software.
+
+DISCLAIMER OF WARRANTY. The Software is provided "AS IS" without warranty of
+any kind, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, WARRANTIES
+OF MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. LIMITATION OF
+LIABILITY. NEITHER INTEL NOR ITS LICENSORS OR SUPPLIERS WILL BE LIABLE FOR ANY
+LOSS OF PROFITS, LOSS OF USE, INTERRUPTION OF BUSINESS, OR INDIRECT, SPECIAL,
+INCIDENTAL, OR CONSEQUENTIAL DAMAGES OF ANY KIND WHETHER UNDER THIS AGREEMENT
+OR OTHERWISE, EVEN IF INTEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
+
+LICENSE TO USE COMMENTS AND SUGGESTIONS. This Agreement does NOT obligate
+Licensee to provide Intel with comments or suggestions regarding the Software.
+However, if Licensee provides Intel with comments or suggestions for the
+modification, correction, improvement or enhancement of (a) the Software or (b)
+Intel products or processes that work with the Software, Licensee grants to
+Intel a non-exclusive, worldwide, perpetual, irrevocable, transferable,
+royalty-free license, with the right to sublicense, under Licensee's
+intellectual property rights, to incorporate or otherwise utilize those
+comments and suggestions.
+
+TERMINATION OF THIS LICENSE. Intel or the sublicensor may terminate this
+license at any time if Licensee is in breach of any of its terms or conditions.
+Upon termination, Licensee will immediately destroy or return to Intel all
+copies of the Software.
+
+THIRD PARTY BENEFICIARY. Intel is an intended beneficiary of the End User
+License Agreement and has the right to enforce all of its terms.
+
+U.S. GOVERNMENT RESTRICTED RIGHTS. The Software is a commercial item (as
+defined in 48 C.F.R. 2.101) consisting of commercial computer software and
+commercial computer software documentation (as those terms are used in 48
+C.F.R. 12.212), consistent with 48 C.F.R. 12.212 and 48 C.F.R 227.72021
+through 227.7202-4. You will not provide the Software to the U.S. Government.
+Contractor or Manufacturer is Intel Corporation, 2200 Mission College Blvd.,
+Santa Clara, CA 95054.
+
+EXPORT LAWS. Licensee agrees that neither Licensee nor Licensee's subsidiaries
+will export/re-export the Software, directly or indirectly, to any country for
+which the U.S. Department of Commerce or any other agency or department of the
+U.S. Government or the foreign government from where it is shipping requires an
+export license, or other governmental approval, without first obtaining any
+such required license or approval. In the event the Software is exported from
+the U.S.A. or re-exported from a foreign destination by Licensee, Licensee will
+ensure that the distribution and export/re-export or import of the Software
+complies with all laws, regulations, orders, or other restrictions of the U.S.
+Export Administration Regulations and the appropriate foreign government.
+
+APPLICABLE LAWS. This Agreement and any dispute arising out of or relating to
+it will be governed by the laws of the U.S.A. and Delaware, without regard to
+conflict of laws principles. The Parties to this Agreement exclude the
+application of the United Nations Convention on Contracts for the International
+Sale of Goods (1980). The state and federal courts sitting in Delaware, U.S.A.
+will have exclusive jurisdiction over any dispute arising out of or relating to
+this Agreement. The Parties consent to personal jurisdiction and venue in those
+courts. A Party that obtains a judgment against the other Party in the courts
+identified in this section may enforce that judgment in any court that has
+jurisdiction over the Parties.
+
+Licensee's specific rights may vary from country to country.
diff --git a/WHENCE b/WHENCE
index 5bed236c6bb1..79b04ff4564f 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5018,6 +5018,10 @@ Link: intel/ice/ddp/ice.pkg -> ice-1.3.4.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
 
+File: intel/ice/ddp-comms/ice_comms-1.3.16.0.pkg
+
+License: Redistributable. See LICENSE.ice_enhanced for details
+
 --------------------------------------------------------------------------
 
 Driver: inside-secure -- Inside Secure EIP197 crypto driver
diff --git a/intel/ice/ddp-comms/ice_comms-1.3.16.0.pkg b/intel/ice/ddp-comms/ice_comms-1.3.16.0.pkg
new file mode 100755
index 0000000000000000000000000000000000000000..748a01ad46b6b1dad211fbd295b0b703071021c1
GIT binary patch
literal 692484
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

literal 0
HcmV?d00001

-- 
2.20.1


--===============9059128977197681606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9059128977197681606==--

